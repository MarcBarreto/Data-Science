# Vehicle Speed Estimation Using Computer Vision and Evolutionary Camera Calibration

This repository contains an experiment based on the article titled 'Vehicle Speed Estimation Using Computer Vision and Evolutionary Camera Calibration,' authored by Hector Mejia, Esteban J. Palomo, Ezequiel López-Rubio, Israel Pineda, and Rigoberto Fonseca-Delgado.

## Overview

The experiment uses YOLOv8, a state-of-the-art object detection model, to detect vehicles on the street. After vehicle detection, it employs the Haversine distance formula to calculate the distance between the first vehicle's frame and the i-th vehicle's frame. The homography matrix is then used to map the real-world points of the vehicle to the corresponding points on the image.

## Important Links

- **Article**: For a detailed understanding of the method and results, you can refer to the original article on OpenReview: [Vehicle Speed Estimation Using Computer Vision and Evolutionary Camera Calibration](https://openreview.net/forum?id=Pl7uHR-Oe6l)

- **Kaggle Notebook**: Additionally, a Kaggle notebook with the implementation and demonstration of the vehicle speed estimation experiment is available at: [Kaggle Notebook](https://www.kaggle.com/code/markbarreto/vehicle-speed-haversine-distance)