from flask import Blueprint, request, jsonify, make_response
import json
from src import db


customers = Blueprint('customers', __name__)

# Get all customers from the DB


@customers.route('/customers', methods=['GET'])
def get_customers():
    cursor = db.get_db().cursor()
    cursor.execute('select  * from customer')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response


# Get customer detail for customer with particular userID


@customers.route('/customers/<userID>', methods=['GET'])
def get_customer(userID):
    cursor = db.get_db().cursor()
    cursor.execute(
        'select * from customer where customerId = {0}'.format(userID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response


@customers.route('/customersID', methods=['GET'])
def get_all_customerID():
    cursor = db.get_db().cursor()
    cursor.execute('select customerId from customer')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response



@customers.route('/borrowingHistory/<custID>/<searchCondition>/<searchYear>', methods=['GET'])
def get_borrowing_history(custID, searchCondition, searchYear):
    cursor = db.get_db().cursor()
    if searchCondition == 'all':
        cursor.execute(f"SELECT bookId, bookName, borrow_time, return_time "
                       f"FROM book NATURAL JOIN reserve "
                       f"WHERE customerId = {custID} AND year(borrow_time) = {searchYear}")
    elif searchCondition == 'returned':
        cursor.execute(f"SELECT bookId, bookName, borrow_time, return_time "
                       f"FROM book NATURAL JOIN reserve "
                       # return time is smaller than current time
                       f"WHERE customerId = {custID} AND year(borrow_time) = {searchYear} AND return_time < now()")

    elif searchCondition == 'unreturned':
        cursor.execute(f"SELECT bookId, bookName, borrow_time, return_time "
                       f"FROM book NATURAL JOIN reserve "
                       # return time is larger than current time
                       f"WHERE customerId = {custID} AND year(borrow_time) = {searchYear} AND return_time > now()")

    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response



@customers.route('/reserveInfo', methods=['GET'])
def get_reserve_info():
    cursor = db.get_db().cursor()
    cursor.execute(f"SELECT * FROM reserve")
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response


