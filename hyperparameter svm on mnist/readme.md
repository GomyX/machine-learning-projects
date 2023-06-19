# Hyperparameter Tuning of SVM on MNIST
This project focuses on hyperparameter tuning of the Support Vector Machine (SVM) algorithm on the MNIST dataset. The goal is to optimize the performance of the SVM classifier for digit recognition by tuning its hyperparameters.

## Dataset
The MNIST dataset is a widely used benchmark dataset in the field of machine learning. It consists of a large number of labeled handwritten digits from 0 to 9. The dataset is divided into a training set and a test set. The training set is used to train the SVM classifier, while the test set is used to evaluate its performance.

To use the MNIST dataset for hyperparameter tuning, follow these steps:

1. Download the MNIST dataset from the Kaggle link: [training data](https://storage.googleapis.com/kaggle-data-sets/27352/34877/compressed/mnist_train.csv.zip?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=gcp-kaggle-com%40kaggle-161607.iam.gserviceaccount.com%2F20230618%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20230618T231826Z&X-Goog-Expires=259200&X-Goog-SignedHeaders=host&X-Goog-Signature=0f17b677f1ac13b11a1c7cb8b5dcf9fefa59401210746814f85943048305e8b6885eeb4537c9981e08af422f218e9c27f9d1ef5bb28ec8af9256cbb357bf18dd8d62607422aae97c3b3c41aea46ec508c97a391ca88f67b26c842b1cd9407ff6e1922d61f5f6032209da3883e92a9fe00d6a25c5081f9afe0e1e739d4c10759ff81170ec84fa9d949b2697c68ff3101b7b28a977b0727d04cad69675e6de92e328392867b3125dde5eecf7b0fc657df632c15676d29070ea9bf395f1cf079e3c68026246e870194f20924179a3d2f50c54d67e44154fa691c05279a6e8a6d3984f550a917ddda40cb1d72115ecefc212e6e6b7a5b4b62379d8c60f76570054ea) ,[test data](https://storage.googleapis.com/kaggle-data-sets/27352/34877/compressed/mnist_test.csv.zip?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=gcp-kaggle-com%40kaggle-161607.iam.gserviceaccount.com%2F20230618%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20230618T231802Z&X-Goog-Expires=259200&X-Goog-SignedHeaders=host&X-Goog-Signature=1ae31b1d30433f983c3112780d1df1d46926df01a8fafad07f0830d33e4d7e521d6e36a8ae983bccecada6352c49d1d483f0541138a72e6f0446bdcc2c107e304766b90b8bdb8aefee04fb4f120cd56dfc062d40e2e5c53510f49a53689afa02b4f7cd3d8d4e24d5428164024eee02876574f30851dd169d839561608e2bf3edefabc1ef7d04565ed8d659513107c81630a45a5957418ee0975c574331c73a80d7cc1aa4aa8f5947607c6cb0e40f977762dbd4189914f588afb7971c2a32dcca861c6211c67c503290b3d1ae17da8ede24df878e3918a28a2222765b6988591c865b505e24f12b03307f09ebd7d01de82f04e46b9dbbef7c77249028dac8af98)

2. Extract the downloaded ZIP files to obtain the CSV files containing the training and test data.

3. Place the training and test CSV files in the appropriate directories or locations on the drive.

## Hyperparameter Tuning
Hyperparameter tuning is a crucial step to optimize the performance of machine learning models. In this project, we aim to tune the hyperparameters of the SVM classifier.

To perform hyperparameter tuning on the SVM classifier, follow these steps:

1. Clone or download this project repository to your local machine.

2. Ensure you have Python 3.x and the required dependencies installed. You can install the dependencies by running the following command:

4. Set the appropriate paths for the training and test dataset CSV files in the notebook file.

5. Define the range of values for the hyperparameters you want to tune in the param_grid dictionary within the svm_hyperparameter_tuning.py file. For instance, you can specify different values for the kernel type, C parameter, and gamma parameter.

6. Run the svm_hyperparameter_tuning.py file to start the hyperparameter tuning process.

7. The program will perform a grid search over the defined hyperparameter values, train the SVM classifier using each combination of hyperparameters, and evaluate their performance using cross-validation. It will output the best hyperparameters found and the corresponding evaluation metrics.

8. Use the best hyperparameters obtained from the tuning process to train the final SVM classifier using the entire training dataset.

## Conclusion
This project demonstrates the process of hyperparameter tuning for the SVM classifier on the MNIST dataset. By optimizing the hyperparameters, you can achieve improved accuracy and performance for digit recognition. Feel free to modify the code and explore other hyperparameters or tuning techniques to further enhance the results.

## contributers 
'@GomyX'


