#!/usr/bin/env python3      
import cv2
import numpy as np

"""
Requires webcam on local machine.

Webcam Application: Detect blue colored objects on the webcam.
                    See https://docs.opencv.org/master/df/d9d/tutorial_py_colorspaces.html
"""

def get_blue_color_bounds():
    # Pure blue color definition:
    blue_BGR = np.uint8([[[255,0,0]]])                          # Blue, Green, Red
    blue_HSV = cv2.cvtColor(blue_BGR, cv2.COLOR_BGR2HSV)        # Hue, Saturation, Value
    print(f"Pure Blue BGR: {blue_BGR}")
    print(f"Pure Blue HSV: {blue_HSV}")

    # Define lower and upper bound of blue color:
    blue_HSV_Hue = blue_HSV.flatten()[0]
    blue_HSV_lower_bound = np.array([blue_HSV_Hue - 10, 100, 100])    # common practice: -10 Hue, 100, 100
    blue_HSV_upper_bound = np.array([blue_HSV_Hue + 10, 255, 255])    # common practice: +10 Hue, 255, 255
    print(f"Blue HSV Lower Bound: {blue_HSV_lower_bound}")
    print(f"Blue HSV Lower Bound: {blue_HSV_upper_bound}")

    return blue_HSV_lower_bound, blue_HSV_upper_bound

def stream_camera(lb, ub):
    # Open webcam object (idx `0` on laptops):
    cam = cv2.VideoCapture(0)
    while True:
        _, img = cam.read()
        img_desired_size = (640,480)
        img = cv2.resize(img, img_desired_size)
        img_HSV = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)

        # Create and apply a mask:
        mask = cv2.inRange(img_HSV, lb, ub)
        img_masked = cv2.bitwise_and(img, img, mask=mask)

        # Display output:
        cv2.imshow("Default Webcam Display", img)
        cv2.imshow("Applied Mask", mask)
        cv2.imshow("Masked Webcam Display", img_masked)
        cv2.waitKey(1)    # refresh every 1 ms.


if __name__ == "__main__":
    lb, ub = get_blue_color_bounds()
    stream_camera(lb, ub)