#! /usr/bin/env python3
import numpy as np
import cv2


Gx = np.array([[-1, 0, 1],
               [-2, 0, 2],
               [-1, 0, 1]])

Gy = np.array([[1, 2, 1],
               [0, 0, 0],
               [-1, -2, -1]])



image = cv2.imread('WhatsApp Image 2026-03-12 at 10.32.46.jpeg', cv2.IMREAD_GRAYSCALE)


def sobel_edge_detection(image):
    rows, cols = image.shape
    edge_image = np.zeros((rows, cols), dtype=np.uint8)

    for i in range(1, rows - 1):
        for j in range(1, cols - 1):
            value_x = 0 
            value_y = 0
            for k in range(-1, 2):
                for l in range(-1, 2):
                    value_x += Gx[k + 1, l + 1] * image[i + k, j + l]
                    value_y += Gy[k + 1, l + 1] * image[i + k, j + l]
            edge_image[i, j] = abs(value_x) + abs(value_y)
    return edge_image

def main():
    edge_image = sobel_edge_detection(image)
    cv2.imshow('Sobel Edge Detection', edge_image)
    cv2.waitKey(0)
    save_path = 'sobel_output.png'
    cv2.imwrite(save_path, edge_image)
    cv2.destroyAllWindows()
main()