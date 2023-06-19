# Spam Classification using Naive Bayes
This repository contains code and documentation for classifying spam emails using the Naive Bayes algorithm. The classification performance is evaluated using a confusion matrix to calculate the score.

#Dataset
The dataset used for this classification task consists of labeled email messages, where each email is labeled as either spam or non-spam (ham). The dataset is preprocessed and divided into a training set and a test set. The training set is used to train the Naive Bayes classifier, while the test set is used to evaluate its performance.

# Naive Bayes Algorithm
The Naive Bayes algorithm is a probabilistic classification algorithm based on Bayes' theorem. It assumes that the presence of a particular feature in a class is independent of the presence of other features. In the context of spam classification, the Naive Bayes algorithm calculates the probability that an email is spam or ham based on the presence or absence of certain words or features in the email.

# Usage
To run the spam classification using Naive Bayes, follow these steps:

1. Clone this repository to your local machine.

2. Ensure you have Python 3.x and the required dependencies installed. You can install the dependencies by running the following command:

3. Copy the code
``` pip install -r requirements.txt ```
Place your labeled dataset in the data directory on the drive. The dataset should be in a CSV format, with each row containing the email text and its corresponding label (spam or ham).
, and make sure you enter the right path in the ``` read_csv()``` function 
Open the spam_classification.py file and modify the dataset_path variable to point to the location of your dataset file.

4. Run the notebook to start the classification process

5. Confusion Matrix and Score
After the classification process is completed, the program will do the confusion matrix, and Based on its values, various evaluation metrics can be calculated, including the score.

The score is a metric that combines precision and recall to provide an overall measure of the classifier's performance. It is calculated using the following formula:


```score = 2 * (precision * recall) / (precision + recall)```
The score ranges from 0 to 1, where a score of 1 indicates perfect classification performance.

# Conclusion
This classification project demonstrates the use of the Naive Bayes algorithm for spam email classification. By utilizing a confusion matrix and calculating the score, we can assess the performance of the classifier.

# contributers
Mahmoud Thabet


