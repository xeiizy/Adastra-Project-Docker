from flask import Blueprint, jsonify, Flask, render_template
from sqlalchemy import create_engine
import pandas as pd
import os

app = Flask(__name__)


def fetch_users_data_from_sql():
    engine = create_engine('mysql+mysqlconnector://root:@db/phones 2.0?charset=utf8mb4', echo=True)
    query = """
        SELECT 
            usersID, usersName, usersEmail, usersPassword
        FROM 
            users
    """
    df = pd.read_sql_query(query, engine)
    engine.dispose()
    return df


def fetch_phones_data_from_sql():
    engine = create_engine('mysql+mysqlconnector://root:@db/phones 2.0?charset=utf8mb4', echo=True)
    query = """
        SELECT 
            phonesID, phonesBrand, phonesModel, phonesStorage, phonesImage
        FROM 
            phones
    """
    df = pd.read_sql_query(query, engine)
    engine.dispose()
    return df


@app.route('/')
def index():
    return render_template('template.html')


@app.route('/users')
def users():
    df = fetch_users_data_from_sql()
    json_output = df.to_dict(orient='records')
    return jsonify(json_output)


@app.route('/phones')
def phones():
    df = fetch_phones_data_from_sql()
    json_output = df.to_dict(orient='records')
    return jsonify(json_output)

app.config['SQLALCHEMY_DATABASE_URI'] = os.getenv('DATABASE_URI', 'mysql+mysqlconnector://root:${MYSQL_ROOT_PASSWORD}@db/phones 2.0?charset=utf8mb4')
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0', port=5000)
