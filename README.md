# Credit Card Segmentation and Churn Prediction

Final Group Project:

Fatima Benitez, Jennifer Barrios, Alberto Aigner, Augustin Bourgois, Will Siuta

## Introduction
Predicting customer churn is a challenge for businesses with large customer bases who may not have a one-to-one relationship with them. It is therefore critical to collect and store data on each unique customer in order to analyze their characteristics and determine what the commonalities are among loyal customers and those who leave. Furthermore, implementing machine learning techniques enables companies to automate the analysis and make more efficient predictions.

As a group, we all wanted to confront this common business challenge for which we could potentially replicate its solution in the real world across our respective fields.

## Dataset and Source
The data used for this project was pulled from a notebook created by the profile named “AMAN CHAUHAN” on Kaggle.com It consists of a unique customer list from a credit card company and their characteristics which include: 
* Which credit card type they are using by name.
* Their status as an existing or attrited customer.
* How long they have or were customers for.
* Demographic information.
* Spending habits.

Link to data source: https://www.kaggle.com/datasets/whenamancodes/credit-card-customers-prediction

## Exploratory Data Analysis (EDA)

To perform our EDA, we imported our dataset into a Google Colab notebook and created a DataFrame from the BankChurners.csv file:

![eda1.png](https://github.com/AugieNY/data_on_fire/blob/fbb16c7285f78b79f0e8ada018924341f8ce01e0/Resources/eda1.png)

After dropping the last two columns, we used the shape() function to see how many rows and columns our datset has: 10,127 rows and 21 columns. Additionally, we used the info() function to obtain column data types and count null values, in this case, no null values were found:

![eda2.png](https://github.com/AugieNY/data_on_fire/blob/fbb16c7285f78b79f0e8ada018924341f8ce01e0/Resources/eda2.png)

Finally, we used the unique() funtion to determine the unique values in each category/column. More details can be found in the Group1_EDA.ipynb file.

## Analysis
Questions aimed to answer with the data:

* Which customers are most likely to churn based on their charateristics?
* Which customers are likely to spend the most based on their characteristics?

The data analyzed based on these segments: 

* Customer by Card Category: Blue, Silver Gold (other)
* Customer Income Status: Less than $40k, $40k-$60k, $60k-$80k, $80k-$120k, $120k+
* New Customers: Months on book = 12 months or less
* Months on book: 13-56 months (2nd-4th year customers)
* Attrition Flag: Existing Customer, Attrited Customer

**GENERAL / BIG PICTURE**
* How many customers total?
* What are the credit card categories?
* What is the average LTV for all customers?
* What is the average months on book for all customers?
* What is the credit limit for each credit card category?
* How many customers for each credit card category?
* Total number of existing and attrited customers
<br>Credit Card Category Split:</br>
* Total number of existing and attrited customers for each card category
* What is the average number of months on book for each card category?
* What is the average number of months on book for existing and attrited customers for each card category?
* What is the average LTV for existing and attrited customers for each card category?

**PROFILING DEMOGRAPHICS**
* For each credit card category of attrited customers find:
Demographics: most common income, age, marital status, gender, education level
* For each credit card category of existing customers find:
Demographics: most common income, age, marital status, gender, education level

**PROFILING ENGAGEMENT / SPEND HABITS**
* Total and average transaction count by card category
* Between New, 1st, year second year segmented customers, what is the average number of inactive and active months for each card category?
* Open to buy ratio by card category
* Average utilization ratio by card category
* Contacts count (number in the last 12 months)
* Number of dependents - avg by card category
* Total relationships - avg by card category

**PROFILING PROFITABILITY**
* For each credit card category of attrited customers find:
    -Total revolving balance
    -Spend: total or average transaction amount (LTV)
* For each credit card category of existing customers find:
    -Total revolving balance
    -Spend: total or average transaction amount (LTV)
* For each defined customer age segment (months on book) find:
    -Total revolving balance
    -Spend: total or average transaction amount (LTV)
    
## Machine Learning 

Due to the type of data working on and the pondered questions, there is one logical way to go and its by the means of a supervised machine learning to evaluate the data and create a classification model. Based on the input data the model predicts if a customer is prone to churning just by examining its profile. 

First attempt will focus on creating a simple logistic regression model to predict customer attrition. Depending on the results of the accuracy of the model, it could be possible to try a different approach with some models that are more robust to outliers and imbalanced data. 

### Sketch of ML file: 

1. Encode and label variables
2. Determine which variable we’re trying to predict (Y dependent variable, X independent variables)
3. Split the variables into train set and test set (Stratify and Scale data*)
4. Initialize and train model 
5. Test model and predict 
6. Assess performance of results (accuracy_score*)
