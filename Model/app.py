import numpy as np
from flask import Flask, request, jsonify, render_template
import pickle

app=Flask(__name__)
model = pickle.load(open('model.pkl', 'rb'))

@app.route('/')
def home():return render_template('src\Pages\S')

@app.route('/predict', methods=['POST'])
def predict():
    int_features = [int(x) for x in request.form.values()]
    final_features=[np.array(int_features)]
    prediction=model.predict(final_features)
    output=round