
from flask import Flask, render_template, request 
import numpy as np
from joblib import load
import pandas as pd
import pickle
import imblearn


app = Flask(__name__)
model = pickle.load(open("model.pkl", "rb"))

@app.route("/", methods=['GET', 'POST'])

def predict():
    
    if request.method == 'POST':
        float_features = [float(x) for x in request.form.values()]
        features = [np.array(float_features)]
        prediction = model.predict(features)
        return render_template("output.html", output=prediction)
    else:
        return render_template('input.html') 

# def Inputs():
     
#     if request.method == 'POST':
#         test = [19.0,705.0,808.0,0.900,0.997,0.562,2.0,630.3,1438.3,54.0,1.0,3.0,40.0,1.0]
#         model = load('new_rmodel.joblib')
#         # np_arr = floats_string_to_np_arr(test)
#         output = give_results(model, test)
        
#         return render_template('output.html', output=output)

#     return render_template('input.html') 
# Default web Inputs

# def predict_churn():
#     if request.method == 'POST':
#         transct = float(request.form['transct'])
#         transamt = float(request.form['transamt'])
#         balance = float(request.form['balance'])
#         chngct = float(request.form['chngct'])
#         chngamt = float(request.form['chngamt'])
#         ratio = float(request.form['ratio'])
#         relationship = float(request.form['relationship'])
#         average = float(request.form['average'])
#         credit = float(request.form['credit'])
#         age = float(request.form['age'])
#         contacts = float(request.form['contacts'])
#         inactive = float(request.form['inactive'])
#         months = float(request.form['months'])
#         dependent = float(request.form['dependent'])
#         test = np.array([transct,transamt,balance,chngct,chngamt,ratio,relationship,average,credit,age,contacts,inactive,months,dependent]).reshape(14, 1)
#         model = load('rmodel.joblib')

#         output = give_results(model, test)

#         return render_template('input.html', output=output)

#     return render_template('input.html')


# function that predict results 

def give_results(model, test):

   output = model.predict(test)

   return output 

        
# function to convert input values to something readable to ML model x_test like 


# def floats_string_to_np_arr(test):            

#   floats = np.array([float(x) for x in test])
  
#   return floats.reshape(len(floats), 1)

# if __name__ == '__main__':
#     app.run(debug=True)