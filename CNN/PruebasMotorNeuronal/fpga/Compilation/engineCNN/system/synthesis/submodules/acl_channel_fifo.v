// (C) 1992-2018 Intel Corporation.                            
// Intel, the Intel logo, Intel, MegaCore, NIOS II, Quartus and TalkBack words    
// and logos are trademarks of Intel Corporation or its subsidiaries in the U.S.  
// and/or other countries. Other marks and brands may be claimed as the property  
// of others. See Trademarks on intel.com for full list of Intel trademarks or    
// the Trademarks & Brands Names Database (if Intel) or See www.Intel.com/legal (if Altera) 
// Your use of Intel Corporation's design tools, logic functions and other        
// software and tools, and its AMPP partner logic functions, and any output       
// files any of the foregoing (including device programming or simulation         
// files), and any associated documentation or information are expressly subject  
// to the terms and conditions of the Altera Program License Subscription         
// Agreement, Intel MegaCore Function License Agreement, or other applicable      
// license agreement, including, without limitation, that your use is for the     
// sole purpose of programming logic devices manufactured by Intel and sold by    
// Intel or its authorized distributors.  Please refer to the applicable          
// agreement for further details.                                                 



module acl_channel_fifo
#(
    // FIFO_DEPTH must be >=0
    parameter integer FIFO_DEPTH = 16,
    parameter integer DATA_W = 64,             // > 0
    parameter integer ADJUST_FOR_LATENCY = 0,
    parameter integer ACL_PROFILE=0,      // Set to 1 to enable profiling
    parameter integer FIFOSIZE_WIDTH=32,
    parameter integer ALMOST_FULL_VALUE=0,
    parameter integer STALL_FREE=0,
    parameter INTENDED_DEVICE_FAMILY="Arria 10"
)
(
    input logic clock,
    input logic resetn,

    input logic                 avst_in_valid,
    input logic    [DATA_W-1:0] avst_in_data,
    output logic                avst_in_ready,
    output logic   [FIFOSIZE_WIDTH-1:0] profile_fifosize,

    input logic                 avst_out_ready,
    output logic   [DATA_W-1:0] avst_out_data,
    output logic                avst_out_valid,
    output logic                almost_full
);

  // requirements:
  // channel's steady-state minimum latency (MIN_L) must be <= FIFO_DEPTH
  // channel's steady-state maximum latency (MAX_L) must be >= FIFO_DEPTH
  
  localparam RAM_SMALLEST_DEPTH = (INTENDED_DEVICE_FAMILY=="Arria V" || INTENDED_DEVICE_FAMILY=="Cyclone V") ? 256 : 512;

  localparam LL_REG_MAX_DEPTH = 6;     
  
  localparam LL_REG_MIN_L = 1;
  localparam SANDWICH_MIN_L = 5;

  localparam RAM_SNAP_TO_POW_OF_2_DEPTH = FIFO_DEPTH <= RAM_SMALLEST_DEPTH ? RAM_SMALLEST_DEPTH :
                                                                                     1<<$clog2(FIFO_DEPTH);

  // keep the channel area model in llvm/lib/Target/FPGA/LateAreaAnalysisPass.cpp in sync
  // with the implementation in this file
  localparam EXTRA_DEPTH = (STALL_FREE == 1) ? 0 : 1;
  generate
    wire channel_stall_out;

    if (STALL_FREE == 1)
    begin
      assign avst_in_ready = 1;
    end
    else
    begin
      assign avst_in_ready = ~channel_stall_out;
    end

    if ((FIFO_DEPTH == 0) && (STALL_FREE == 1))
    begin
        // Impl: feed-forward wires (stall-free)
        // Capacity = 0
        // MIN_L = 0
        // MAX_L = 0
      assign avst_out_valid = avst_in_valid;
      assign avst_out_data  = avst_in_data;
      assign almost_full    = 0;
    end
    else if (FIFO_DEPTH == 0)
    begin
      // Impl: staging reg 
      // Capacity = 1
      // MIN_L = 0
      // MAX_L = 0

      acl_staging_reg
      #(
        .WIDTH(DATA_W)
      )
      asr( 
        .clk      (clock), 
        .reset    (~resetn),

        .i_data   (avst_in_data),
        .i_valid  (avst_in_valid),
        .o_stall  (channel_stall_out),

        .o_data   (avst_out_data),
        .o_valid  (avst_out_valid),
        .i_stall  (~avst_out_ready)
      );

      assign almost_full = channel_stall_out;
    end
    else if ((FIFO_DEPTH + (1 + ADJUST_FOR_LATENCY*LL_REG_MIN_L)) <= LL_REG_MAX_DEPTH)
    begin
        // ADJUST_FOR_LATENCY = 0
          // 1 <= FIFO_DEPTH <= 5
          //    Impl: ll_reg, 
          //    Capacity = FIFO_DEPTH+1 (2-6)
          //    MIN_L = 1, 
          //    MAX_L = FIFO_DEPTH (1-5)

        // ADJUST_FOR_LATENCY = 1
          // 1 <= FIFO_DEPTH <= 4
          //    Impl: ll_reg, 
          //    Capacity = FIFO_DEPTH+2 (3-6)
          //    MIN_L = 1, 
          //    MAX_L = FIFO_DEPTH+1 (2-5)

        // base case, adjust FIFO_DEPTH (capacity) for stall (backward) latency of 1
        // if need to adjust for forward latency then also add LL_REG_MIN_L capacity 
        localparam FIFO_DEPTH_ADJUSTED = FIFO_DEPTH + (EXTRA_DEPTH + ADJUST_FOR_LATENCY*LL_REG_MIN_L); 
        localparam IMPL  = "ll_reg";

        // FIFO_DEPTH - ALMOST_FULL_VALUE = const (invariant), thus must increase the ALMOST_FULL_VALUE by the same amount we increased FIFO_DEPTH
        localparam ALMOST_FULL_VALUE_AFTER_FIFO_DEPTH_ADJUSTED = ALMOST_FULL_VALUE == 0 ? 0 : 
                                                                          ALMOST_FULL_VALUE + (FIFO_DEPTH_ADJUSTED - FIFO_DEPTH);

        acl_data_fifo
        #(
            .DATA_WIDTH         (DATA_W),
            .DEPTH              (FIFO_DEPTH_ADJUSTED),
            .IMPL               (IMPL),
            .ALLOW_FULL_WRITE   (0),
            .ALMOST_FULL_VALUE  (ALMOST_FULL_VALUE_AFTER_FIFO_DEPTH_ADJUSTED)
        )
        fifo
        (
            .clock     (clock),
            .resetn    (resetn), 
            
            .data_in   (avst_in_data),
            .valid_in  (avst_in_valid),
            .stall_out (channel_stall_out),

            .data_out  (avst_out_data),
            .valid_out (avst_out_valid),
            .stall_in  (~avst_out_ready),

            .almost_full(almost_full)
        );
    end
    else if ((FIFO_DEPTH + (2 + ADJUST_FOR_LATENCY*SANDWICH_MIN_L)) <= RAM_SNAP_TO_POW_OF_2_DEPTH)
    begin
        // pow_of_2_full mode (base)  --> no impact on forward latency (MIN_L) or stall (backward) latency
        // +reg_data_in mode          --> increases MIN_L by 1,             thus MIN_L=SANDWICH_MIN_L
        // +reg_output_accepted mode  --> increases backward latency by 1,  thus 2 

        // capacity slack requirement (base):  backward latency    +   adjustment for MIN_L
        //                                       1                 +   ADJUST_FOR_LATENCY*SANDWICH_MIN_L
        //
        // if we use both reg_data and reg_output_accepted modes then the required capacity slack is
        //                                       2                 +   ADJUST_FOR_LATENCY*SANDWICH_MIN_L

        localparam ACL_FIFO_IMPL = "pow_of_2_full_reg_data_in_reg_output_accepted";

        // adjust FIFO_DEPTH based on the chosen impl
        localparam FIFO_DEPTH_ADJUSTED = FIFO_DEPTH + (2 + ADJUST_FOR_LATENCY*SANDWICH_MIN_L);

        // snap adjusted FIFO_DEPTH to pow-of-2, if already at pow-of-2, the value remains the same                                                                                            
        localparam FIFO_DEPTH_ADJUSTED_AND_SNAPPED_TO_POW_OF_2 = 1<<$clog2(FIFO_DEPTH_ADJUSTED);

        // acl_data_fifo implementation style
        localparam IMPL  = "ram_plus_reg";         

        // FIFO_DEPTH - ALMOST_FULL_VALUE = const (invariant), thus must increase the ALMOST_FULL_VALUE by the same amount we increased FIFO_DEPTH
        localparam ALMOST_FULL_VALUE_AFTER_FIFO_DEPTH_ADJUSTED_AND_SNAPPED_TO_POW_OF_2 = ALMOST_FULL_VALUE == 0 ? 0 : 
                                                                          ALMOST_FULL_VALUE + (FIFO_DEPTH_ADJUSTED_AND_SNAPPED_TO_POW_OF_2 - FIFO_DEPTH);


        acl_data_fifo
        #(
            .DATA_WIDTH                 (DATA_W),
            .DEPTH                      (FIFO_DEPTH_ADJUSTED_AND_SNAPPED_TO_POW_OF_2),
            .IMPL                       (IMPL),
            .ALLOW_FULL_WRITE           (0),
            .ALMOST_FULL_VALUE          (ALMOST_FULL_VALUE_AFTER_FIFO_DEPTH_ADJUSTED_AND_SNAPPED_TO_POW_OF_2),
            .ACL_FIFO_IMPL              (ACL_FIFO_IMPL)
        )
        fifo
        (
            .clock     (clock),
            .resetn    (resetn), 
            
            .data_in   (avst_in_data ),
            .valid_in  (avst_in_valid),
            .stall_out (channel_stall_out),

            .data_out  (avst_out_data),
            .valid_out (avst_out_valid),
            .stall_in  (~avst_out_ready),

            .almost_full(almost_full)
        );

    end
    else
    begin
        // ADJUST_FOR_LATENCY = 0, default 
        // 6 <= FIFO_DEPTH
        //    Impl: sandwich, 
        //    Capacity = 2 + FIFO_DEPTH + 2 = FIFO_DEPTH + 4 
        //    MIN_L = 1 + 3 + 1 = 5
        //    MAX_L = 1 + (FIFO_DEPTH-1) + 1 = FIFO_DEPTH + 1

        // ADJUST_FOR_LATENCY = 1, examples for RAM_SNAP_TO_POW_OF_2_DEPTH=512
          // a) extra latency can be fully rolled into the middle RAM FIFO
          // 5 <= FIFO_DEPTH <= (512-5)
          //    Impl: sandwich, 
          //    Capacity = 2 + (FIFO_DEPTH+5) + 2 = FIFO_DEPTH + 9 
          //    MIN_L = 1 + 3 + 1 = 5
          //    MAX_L = 1 + (FIFO_DEPTH-1+5) + 1 = FIFO_DEPTH + 6
          //
          // b) extra latency can be partially rolled into the middle FIFO
          // (512-5) < FIFO_DEPTH, e.g., FIFO_DEPTH = 508
          //    LL_REG_DEPTH_ADJUSTED =  5 - (512 - 508) + 1 = 2
          //    Impl: sandwich, 
          //    Capacity = 2 + 512 + 2 = 512 + 4 = (FIFO_DEPTH + 4) + 4
          //    MIN_L = 1 + 3 + 1 = 5
          //    MAX_L = 1 + 511 + 1 = FIFO_DEPTH + 5
          //
          // c) extra latency cannot be rolled into the middle FIFO
          // 512 = FIFO_DEPTH, e.g., FIFO_DEPTH = 512
          //    LL_REG_DEPTH_ADJUSTED =  5 - (512 - 512) + 1 = 6
          //    Impl: sandwich, 
          //    Capacity = 2 + 512 + 6 = 512 + 8 = (FIFO_DEPTH + 4) + 4
          //    MIN_L = 1 + 3 + 1 = 5
          //    MAX_L = 1 + 511 + 5 = FIFO_DEPTH + 5
          //    
 
        localparam BACK_LL_REG_DEPTH = 2;
        
        // SCFIFO will snap-up to pow-of-2, this provides unused capacity which we use to roll in the MIN_L capacity (when adjusting for fwd lat.) into the RAM
        // The capacity than we can't roll into the RAM is spilled into the sandwich's back LL_REG, (by increasing the depth of the back LL_REG)
        // Note: even if SCFIFO was not snapping up to pow-of-2, there would still be unused capacity, but the below calculation would have to change


        localparam LL_REG_DEPTH_ADJUSTED_CALC = SANDWICH_MIN_L - (RAM_SNAP_TO_POW_OF_2_DEPTH - FIFO_DEPTH) + 1; 
        localparam LL_REG_DEPTH_ADJUSTED = ADJUST_FOR_LATENCY == 0 ? BACK_LL_REG_DEPTH :
                                                LL_REG_DEPTH_ADJUSTED_CALC > BACK_LL_REG_DEPTH ? LL_REG_DEPTH_ADJUSTED_CALC : BACK_LL_REG_DEPTH;

        localparam FIFO_DEPTH_ADJUSTED_CALC = FIFO_DEPTH + SANDWICH_MIN_L;
        localparam FIFO_DEPTH_ADJUSTED = ADJUST_FOR_LATENCY == 0  ? FIFO_DEPTH : 
                                         FIFO_DEPTH_ADJUSTED_CALC > RAM_SNAP_TO_POW_OF_2_DEPTH ? RAM_SNAP_TO_POW_OF_2_DEPTH : FIFO_DEPTH_ADJUSTED_CALC;
                                         

        // if FIFO_DEPTH is already pow-of-2, then both FIFO_DEPTH_ADJUSTED and FIFO_DEPTH_ADJUSTED_AND_SNAPPED_TO_POW_OF_2 
        // will remain at FIFO_DEPTH, thus we never snap up more M20Ks than dictated by the original FIFO_DEPTH
        localparam FIFO_DEPTH_ADJUSTED_AND_SNAPPED_TO_POW_OF_2 = 1<<$clog2(FIFO_DEPTH_ADJUSTED);

        localparam IMPL  = "sandwich"; 
        
        localparam ACL_FIFO_IMPL    = "basic";

        localparam ALMOST_FULL_VALUE_AFTER_FIFO_DEPTH_ADJUSTED_AND_SNAPPED_TO_POW_OF_2 = ALMOST_FULL_VALUE == 0 ? 0 : 
                                                                          ALMOST_FULL_VALUE + (FIFO_DEPTH_ADJUSTED_AND_SNAPPED_TO_POW_OF_2 - FIFO_DEPTH);

        acl_data_fifo
        #(
            .DATA_WIDTH                 (DATA_W),
            .DEPTH                      (FIFO_DEPTH_ADJUSTED_AND_SNAPPED_TO_POW_OF_2),
            .IMPL                       (IMPL),
            .ALLOW_FULL_WRITE           (0),
            .ALMOST_FULL_VALUE          (ALMOST_FULL_VALUE_AFTER_FIFO_DEPTH_ADJUSTED_AND_SNAPPED_TO_POW_OF_2),
            .BACK_LL_REG_DEPTH          (LL_REG_DEPTH_ADJUSTED),
            .ACL_FIFO_IMPL              (ACL_FIFO_IMPL)
        )
        fifo
        (
            .clock     (clock),
            .resetn    (resetn), 
            
            .data_in   (avst_in_data ),
            .valid_in  (avst_in_valid),
            .stall_out (channel_stall_out),

            .data_out  (avst_out_data),
            .valid_out (avst_out_valid),
            .stall_in  (~avst_out_ready),

            .almost_full(almost_full)
        );

    end
    endgenerate

    // Profiler support - keep track of FIFO size
    generate
    if(ACL_PROFILE==1) begin
        wire inc_in;
        wire inc_out;
        reg [FIFOSIZE_WIDTH-1:0] fifosize;

        assign inc_in = ( avst_in_valid & avst_in_ready );
        assign inc_out= ( avst_out_valid & avst_out_ready );

        always@(posedge clock or negedge resetn)
        begin
            if ( !resetn ) begin
               fifosize <= { FIFOSIZE_WIDTH{1'b0} };
            end
            else begin
               if( inc_in & ~inc_out ) begin
                   fifosize <= fifosize + 1;
               end
               else if( ~inc_in & inc_out ) begin
                   fifosize <= fifosize - 1;
               end
            end
        end

        assign profile_fifosize = fifosize;
    end
    else begin
        assign profile_fifosize = { FIFOSIZE_WIDTH{1'b0} };
    end
    endgenerate

endmodule
