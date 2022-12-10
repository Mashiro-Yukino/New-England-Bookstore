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


@employees.route('/generateReport/<reporttype>/<searchYear>', methods=['GET'])
def generate_report(reporttype, searchYear):
    cursor = db.get_db().cursor()
    if reporttype == 'profit':
        cursor.execute(f"SELECT bookName, sum(pricePerDay * (return_time - borrow_time)) as profit "
                       f"FROM book NATURAL JOIN reserve "
                       f"WHERE year(borrow_time) = {searchYear} "
                       f"GROUP BY bookId "
                       f"ORDER BY profit DESC")

    elif reporttype == 'authors':
        # Rank the total number of books borrowed in a year by genre
        cursor.execute(f"SELECT concat(firstName, ' ', midName, ' ', lastName) as authorName, count(authorId) as bookCount "
                       f"FROM book NATURAL JOIN author NATURAL JOIN reserve "
                       f"WHERE year(borrow_time) = {searchYear} "
                       f"GROUP BY authorId "
                       f"ORDER BY bookCount DESC")
    elif reporttype == 'genre':
        # Rank the total number of books borrowed in a year written by each author
        cursor.execute(f"SELECT category, count(category) as count from bookGenre natural join reserve "
                       f"WHERE YEAR(borrow_time) = {searchYear} GROUP BY category ORDER BY count DESC")
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
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response
