from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db


employees = Blueprint('employees', __name__)


@employees.route('/employees', methods=['GET'])
def get_customers():
    cursor = db.get_db().cursor()
    cursor.execute('select  * from employee')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response


# @books.route('/book', methods=['POST'])
# def add_book():
#     current_app.logger.info(request.form)
#     cursor = db.get_db().cursor()
#
#     authorId = request.form['authorId']
#     pricePerDay = request.form['pricePerDay']
#     bookName = request.form['bookName']
#     status = request.form['status']
#     booktype = request.form['booktype']
#
#     query = f"INSERT INTO book (authorId, pricePerDay, bookName, status, booktype) " \
#             f"VALUES ('{authorId}', '{pricePerDay}', '{bookName}', '{status}', '{booktype}')"
#     cursor.execute(query)
#     db.get_db().commit()
#     return 'Book added successfully'


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



