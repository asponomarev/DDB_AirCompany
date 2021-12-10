from flask import Flask, request, render_template, url_for, flash, redirect
from flask.templating import render_template_string
from werkzeug.exceptions import abort
from flaskext.mysql import MySQL

app = Flask(__name__)
app.config['SECRET_KEY'] = 'my secret key'
mysql = MySQL()
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = '0509tima'
app.config['MYSQL_DATABASE_DB'] = 'avia'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql.init_app(app)

conn = mysql.connect()
cursor =conn.cursor()


@app.route("/")
def start_page():
    return render_template('index.html')

# Инициализация, так как словарь словарей не рендерится 
counter = []
routes_numbers = []
routes_dep_ap = []
routes_dest_ap = []
routes_dep_time = []
routes_arr_time = []

@app.route("/routes")
def routes():
    cursor.execute(f"SELECT * from routes")
    routes_list2 = cursor.fetchall()
    
    for i in range (0,len(routes_list2)):
        counter.append(i)

    for obj in routes_list2:
        routes_numbers.append(obj[0])
        ap_departure_code = obj[1]
        cursor.execute(f"select ap_name from airports where ap_code = '{ap_departure_code}';")
        ap_departure_name = cursor.fetchall()[0][0]
        ap_destination_code = obj[2]
        cursor.execute(f"select ap_name from airports where ap_code = '{ap_destination_code}';")
        ap_destination_name = cursor.fetchall()[0][0]
        routes_dep_ap.append(ap_departure_name)
        routes_dest_ap.append(ap_destination_name)
        routes_dep_time.append(obj[3])
        routes_arr_time.append(obj[4])
    return render_template('routes.html', data = counter, routes_numbers = routes_numbers, dep_ap = routes_dep_ap,
                                        dest_ap = routes_dest_ap, dep_time = routes_dep_time, arr_time = routes_arr_time)

def get_route(id):
    route_data = routes_numbers[id]
    route_info = f"From {routes_dep_ap[id]} at {routes_dep_time[id]} to {routes_dest_ap[id]} at {routes_arr_time[id]}"
    if route_data is None:
        abort(404)
    return route_data, route_info

@app.route('/<int:id>', methods=['GET', 'POST'])
def ticket(id):
    route, info = get_route(id)
    if request.method == 'POST':
        psn_first_name = request.form['first_name']
        psn_last_name = request.form['last_name']
        psn_document = request.form['document']
        psn_phone = request.form['phone']
        if psn_first_name == "" or psn_last_name == "" or psn_document == "" or psn_phone == "":
            flash('All field are required!')
        else:
            cursor.execute("SELECT psn_id FROM passengers ORDER BY psn_id DESC LIMIT 1;")
            last_id = int(cursor.fetchall()[0][0]) + 1

            cursor.execute(f'''INSERT passengers(psn_id, psn_first_name, psn_last_name, psn_country, psn_doctype, psn_docnum, 
            psn_gender, psn_birthdate, psn_email, psn_phone, psn_bonus_miles)
            VALUES
            ('{last_id}','{psn_first_name}','{psn_last_name}','RUS','passport','{psn_document}', 'm', '2001-01-01','example@gmail.com','{psn_phone}','0');
            ''')
            print(f'''INSERT passengers(psn_id, psn_first_name, psn_last_name, psn_country, psn_doctype, psn_docnum, 
            psn_gender, psn_birthdate, psn_email, psn_phone, psn_bonus_miles)
            VALUES
            ('{last_id}','{psn_first_name}','{psn_last_name}','RUS','passport','{psn_document}', 'm', '2001-01-01','example@gmail.com','{psn_phone}','0');
            ''')
            cursor.execute(f"SELECT t_psn_booking FROM tickets WHERE t_flight_num = '{routes_numbers[id]}';")
            booking_number = cursor.fetchone()
            if booking_number is None:
                cursor.execute(f"SELECT t_psn_booking FROM tickets WHERE t_flight_num = 'MY 7963';")
                booking_number = cursor.fetchone()
            return render_template('success.html', data = booking_number[0])

    return render_template('ticket.html', data = route, info = info)


@app.route("/booking", methods=['GET', 'POST'])
def booking():
    if request.method == 'POST':
        booking_number = request.form["number"]
        if booking_number != "":
            cursor.execute(f"select t_price, t_class from tickets where t_psn_booking = '{booking_number}';")
            my_tuple = cursor.fetchall()
            price = my_tuple[0][0]
            psn_class_letter = my_tuple[0][1]
            psn_class = ""
            if psn_class_letter == "e":
                psn_class = "econom"
            else:
                psn_class = "business"
            information = f"Your class is {psn_class}, price of ticket is {price} rubles"
            return render_template('booking.html', data = information)
    return render_template('booking.html')

# Just отображение таблиц, старая версия
# @app.route("/tables")
# def display_table():
#     table_name = request.args.get('table')
#     sql_data = ""
#     for i in range(0,100):
#         cursor.execute(f"SELECT * from {table_name}  LIMIT {i},1;")
#         check_sql = str(cursor.fetchall())
#         if check_sql != "()":
#             sql_data = sql_data + str(check_sql) + "<br>"
#         else:
#             break
#     return sql_data

if __name__ == '__main__':
    app.run(debug=True)