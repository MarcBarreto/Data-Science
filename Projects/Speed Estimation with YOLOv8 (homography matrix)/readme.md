This experiment is based on the article titled 'Vehicle Speed Estimation Using Computer Vision and Evolutionary Camera Calibration' authored by Hector Mejia, Esteban J. Palomo, Ezequiel López-Rubio, Israel Pineda, and Rigoberto Fonseca-Delgado.

The method uses YOLOv8 to detect vehicles on the street. After detection, it employs the Haversine distance formula to calculate the distance between the first vehicle's frame and the i-th vehicle's frame. The homography matrix is then used to map the real-world points of the vehicle to the corresponding points on the image.

Important links:

Article: https://openreview.net/forum?id=Pl7uHR-Oe6l
Kaggle notebook: https://www.kaggle.com/code/markbarreto/vehicle-speed-haversine-distance