#!/usr/bin/env python3      
import cv2

""" Open an image """
img = cv2.imread("../images/python_logo.png")
cv2.imshow("My Image", img)
cv2.waitKey(0)    # waits for a specific time in ms until you press any button. 0 means wait forever.

""" Print info about image dimensions """
print(f"Shape of img: {img.shape}")
print(f"Size (no of px) of img: {img.size}")
print(f"Dtype of img: {img.dtype}")

""" Crop out a region-of-interest within the entire image """
roi = img[300:400, 400:500]
cv2.imshow("ROI", roi)
cv2.waitKey(0)

""" Save ROI """
cv2.imwrite("./images/roi.png", roi)