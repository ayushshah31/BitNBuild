import numpy as np
import pandas as pd
from sklearn.preprocessing import StandardScaler  # to standardise our data
from sklearn.model_selection import train_test_split
from sklearn import svm
from sklearn.metrics import accuracy_score
import pickle

diabetes_dataset = pd.read_csv('diabetes.csv')
X = diabetes_dataset.drop(columns = 'Outcome', axis = 1)
Y = diabetes_dataset['Outcome']
scaler = StandardScaler()
scaler.fit(X)
standardized_data = scaler.transform(X)

X = standardized_data
Y = diabetes_dataset['Outcome']

X_train, X_test, Y_train, Y_test = train_test_split(X, Y, test_size = 0.2, random_state = 2, stratify = Y)
classifier = svm.SVC(kernel = 'linear')
classifier.fit(X_train, Y_train)

pickle.dump(classifier, open('model.pkl', 'wb'))
model = pickle.load(open('model.pkl', 'rb')) 