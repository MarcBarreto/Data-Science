# Vehicle Speed Estimation using YOLOv8 and 1D-CNN

This repository contains an experiment based on the article titled 'Deep learning-based vehicle speed estimation using the YOLO detector and 1D-CNN,' authored by Andrej Cvijetić, Slobodan Djukanović, and Andrija Perunićić.

## Overview

The experiment utilizes YOLOv8, a state-of-the-art object detection model, to detect vehicles on the street. After vehicle detection, a 1D-CNN (Convolutional Neural Network) model is employed to estimate the speed of each detected vehicle. The key feature used for speed prediction is CBBA (Change of Bounding Box Areas), which refers to the changes in the areas of the vehicle's bounding boxes in each frame.

## Important Links

- **Dataset**: The dataset used for training and evaluation can be accessed from the following link: [Vehicle Speed Estimation Dataset](https://slobodan.ucg.ac.me/science/vs13/)

- **Article**: For a detailed understanding of the method and results, you can refer to the original article at the IEEE Xplore Digital Library: [Deep learning-based vehicle speed estimation using the YOLO detector and 1D-CNN](https://ieeexplore.ieee.org/document/10078518)

- **Kaggle Notebook**: Additionally, a Kaggle notebook with the implementation and demonstration of the vehicle speed estimation experiment is available at: [Kaggle Notebook](https://www.kaggle.com/code/markbarreto/vehicle-speed)

## Note

This experiment showcases an application of deep learning for vehicle speed estimation, and its performance may vary depending on the dataset and other environmental factors. Feel free to explore and adapt the experiment to suit your specific use cases.

If you have any questions or need additional information, don't hesitate to ask. Happy experimenting!
