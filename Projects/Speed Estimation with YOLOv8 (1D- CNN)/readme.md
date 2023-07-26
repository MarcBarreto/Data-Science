This experiment is based on the article titled 'Deep learning-based vehicle speed estimation using the YOLO detector and 1D-CNN' authored by Andrej Cvijetić, Slobodan Djukanović, and Andrija Perunićić.

The method utilizes YOLOv8 to detect vehicles on the street. After detection, it employs a 1D-CNN model to estimate the speed of each vehicle. To predict the speed, the model requires the use of CBBA (Change of Bounding Box Areas), which refers to the areas of the vehicle's bounding boxes in each frame.

Important links:
Dataset: https://slobodan.ucg.ac.me/science/vs13/
Article: https://ieeexplore.ieee.org/document/10078518
Kaggle notebook: https://www.kaggle.com/code/markbarreto/vehicle-speed