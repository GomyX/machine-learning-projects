# Implementing Logistic Regression on Heart Attack Dataset
This project focuses on implementing logistic regression using both built-in libraries and from scratch on the Heart Attack dataset. The goal is to explore the dataset through visualizations and analyze the relationships between variables. The project involves comparing the performance of the two logistic regression models and reporting observations based on the analysis and visualizations. The evaluation will be done using the accuracy_score and roc_curve metrics.

# Dataset
The Heart Attack dataset will be used for this project. Ensure that you have obtained the dataset before proceeding. The dataset contains various features related to heart attack risk factors. It will serve as the main source of data for the analysis and modeling.

# Data Visualization and Analysis
Perform data visualization and analysis to gain insights into the relationships between variables in the Heart Attack dataset. Use visualizations such as histograms, scatter plots, and correlation matrices to explore the dataset. Analyze the patterns and trends in the data, identifying potential predictive features and their impact on the target variable.

# Logistic Regression Implementation
Implement logistic regression using both built-in libraries (such as scikit-learn) and from scratch. Utilize the built-in libraries to fit a logistic regression model on the Heart Attack dataset. Then, implement logistic regression from scratch by defining the necessary functions for model training, parameter estimation, and prediction.

# Observations and Findings
Based on the analysis and visualizations:
* People with Non-Anginal chest pain, that is with cp = 2 have higher chances of heart attack.

* People with 0 major vessels, that is with caa = 0 have high chance of heart attack.

* People with sex = 1 have higher chance of heart attack.

* People with thall = 2 have much higher chance of heart attack.

* People with no exercise induced angina, that is with exng = 0 have higher chance of heart attack.

# Model Performance Evaluation
Evaluate the performance of both the built-in logistic regression model and the model implemented from scratch. Use the accuracy_score metric to measure the accuracy of the models in predicting heart attack occurrences. Additionally, utilize the roc_curve metric to assess the models' performance in terms of the true positive rate and false positive rate.


# Comparison and Discussion
* the built-in model has higher accuracy than my model(as expected)
Compare the performance of the two logistic regression models based on the evaluation metrics. Discuss the strengths and weaknesses of each model and their ability to predict heart attacks accurately. Reflect on the insights gained from the analysis and visualizations, and consider how well the models capture the patterns and relationships observed.
