import sqlite3
import matplotlib.pyplot as plt
import matplotlib.dates as mdates
from matplotlib import style
#from dateutil import parser
style.use('fivethirtyeight')

conn  = sqlite3.connect('Bases.db')
cursor = conn.cursor()

def grafica():
    cursor.execute('SELECT nombre_materia, califiacion FROM califiacion')
    data = cursor.fetchall()
    nombre = []
    califiacion = []
    for row in data:
        nombre.append(row[0]) 
        califiacion.append(row[1])
        print (nombre)
        print(califiacion)
    plt.plot_date(nombre, califiacion, "X-")
    plt.show()
grafica()
