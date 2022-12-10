from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db


employees = Blueprint('employees', __name__)


@employees.route('/updateCustomerInfo', methods=['POST'])
def update_customer_info():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()

    memberType = request.form['memberType']
    balance = request.form['balance']
    customerId = request.form['customerId']

    # add the number of balance to the current balance, memberType update to the new memberType
    query = f"UPDATE customer SET balance = balance + {balance}, memberType = '{memberType}' WHERE customerId = {customerId}"

    cursor.execute(query)
    db.get_db().commit()
    return 'Customer info updated successfully'


@employees.route('/getCertainCustomer/<customerId>', methods=['GET'])
def get_certain_customer(customerId):
    cursor = db.get_db().cursor()
    cursor.execute(f"select  * from customer where customerId = {customerId}")
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response




@employees.route('/allInfo/<certainCondition>', methods=['GET'])
def get_allInfo(certainCondition):
    cursor = db.get_db().cursor()
    if certainCondition == 'get_customers':
        cursor.execute('select  * from customer')
    elif certainCondition == 'get_authors':
        cursor.execute('select  * from author')
    elif certainCondition == 'get_books':
        cursor.execute('select  * from book')
    elif certainCondition == 'get_reserves':
        cursor.execute('select  * from reserve')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response


@employees.route('/checkReserve', methods=['GET'])
def check_reserve():
    cursor = db.get_db().cursor()
    cursor.execute('select  * from reserve')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response
