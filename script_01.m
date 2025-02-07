# Script ejecutable para conectar con la base de datos
pkg load database
conn = pq_connect (setdbopts ("dbname","postgres","host","localhost","port","5432","user","postgres","password","postgres"));

# Insertar datos en tabla
N = pq_exec_params (conn,"INSERT INTO redes VALUES ('Alberto Carlos','202000315');");

N = pq_exec_params (conn,"SELECT * FROM redes");
N.data
