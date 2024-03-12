 --Consultas simples:
 
 select * from clientes;
 /*
+------------+------------+---------------+
| id_cliente | nombre     | direccion     |
+------------+------------+---------------+
|          1 | Cliente 1  | Dirección 1   |
|          2 | Cliente 2  | Dirección 2   |
|          3 | Cliente 3  | Dirección 3   |
|          4 | Cliente 4  | Dirección 4   |
|          5 | Cliente 5  | Dirección 5   |
|          6 | Cliente 6  | Dirección 6   |
|          7 | Cliente 7  | Dirección 7   |
|          8 | Cliente 8  | Dirección 8   |
|          9 | Cliente 9  | Dirección 9   |
|         10 | Cliente 10 | Dirección 10  |
|         11 | Cliente 11 | Dirección 11  |
|         12 | Cliente 12 | Dirección 12  |
|         13 | Cliente 13 | Dirección 13  |
|         14 | Cliente 14 | Dirección 14  |
|         15 | Cliente 15 | Dirección 15  |
|         16 | Cliente 16 | Dirección 16  |
|         17 | Cliente 17 | Dirección 17  |
|         18 | Cliente 18 | Dirección 18  |
|         19 | Cliente 19 | Dirección 19  |
|         20 | Cliente 20 | Dirección 20  |
+------------+------------+---------------+
*/
select * from productos;/*
+-------------+-------------+--------+
| id_producto | nombre      | precio |
+-------------+-------------+--------+
|           1 | Producto 1  |  10.99 |
|           2 | Producto 2  |   20.5 |
|           3 | Producto 3  |  30.99 |
|           4 | Producto 4  |   40.5 |
|           5 | Producto 5  |  50.99 |
|           6 | Producto 6  |   60.5 |
|           7 | Producto 7  |  70.99 |
|           8 | Producto 8  |   80.5 |
|           9 | Producto 9  |  90.99 |
|          10 | Producto 10 |  100.5 |
|          11 | Producto 11 | 110.99 |
|          12 | Producto 12 |  120.5 |
|          13 | Producto 13 | 130.99 |
|          14 | Producto 14 |  140.5 |
|          15 | Producto 15 | 150.99 |
|          16 | Producto 16 |  160.5 |
|          17 | Producto 17 | 170.99 |
|          18 | Producto 18 |  180.5 |
|          19 | Producto 19 | 190.99 |
|          20 | Producto 20 |  200.5 |
+-------------+-------------+--------+

*/


select * from ordenes;
/*
+----------+------------+-------------+----------+
| id_orden | id_cliente | id_producto | cantidad |
+----------+------------+-------------+----------+
|        1 |          1 |           1 |        2 |
|        2 |          2 |           2 |        1 |
|        3 |          3 |           3 |        3 |
|        4 |          4 |           4 |        2 |
|        5 |          5 |           5 |        1 |
|        6 |          6 |           6 |        2 |
|        7 |          7 |           7 |        3 |
|        8 |          8 |           8 |        2 |
|        9 |          9 |           9 |        1 |
|       10 |         10 |          10 |        2 |
|       11 |         11 |          11 |        3 |
|       12 |         12 |          12 |        2 |
|       13 |         13 |          13 |        1 |
|       14 |         14 |          14 |        2 |
|       15 |         15 |          15 |        3 |
|       16 |         16 |          16 |        2 |
|       17 |         17 |          17 |        1 |
|       18 |         18 |          18 |        2 |
|       19 |         19 |          19 |        3 |
|       20 |         20 |          20 |        2 |
+----------+------------+-------------+----------+
*/
select * from clientes order by nombre limit 5;
/*
+------------+------------+---------------+
| id_cliente | nombre     | direccion     |
+------------+------------+---------------+
|          1 | Cliente 1  | Dirección 1   |
|         10 | Cliente 10 | Dirección 10  |
|         11 | Cliente 11 | Dirección 11  |
|         12 | Cliente 12 | Dirección 12  |
|         13 | Cliente 13 | Dirección 13  |
+------------+------------+---------------+

*/
 select * from productos where precio > 50;
 /*
+-------------+-------------+--------+
| id_producto | nombre      | precio |
+-------------+-------------+--------+
|           5 | Producto 5  |  50.99 |
|           6 | Producto 6  |   60.5 |
|           7 | Producto 7  |  70.99 |
|           8 | Producto 8  |   80.5 |
|           9 | Producto 9  |  90.99 |
|          10 | Producto 10 |  100.5 |
|          11 | Producto 11 | 110.99 |
|          12 | Producto 12 |  120.5 |
|          13 | Producto 13 | 130.99 |
|          14 | Producto 14 |  140.5 |
|          15 | Producto 15 | 150.99 |
|          16 | Producto 16 |  160.5 |
|          17 | Producto 17 | 170.99 |
|          18 | Producto 18 |  180.5 |
|          19 | Producto 19 | 190.99 |
|          20 | Producto 20 |  200.5 |
+-------------+-------------+--------+
*/

select * from ordenes where id_cliente=1;
/*
+----------+------------+-------------+----------+
| id_orden | id_cliente | id_producto | cantidad |
+----------+------------+-------------+----------+
|        1 |          1 |           1 |        2 |
+----------+------------+-------------+----------+
*/

select * from cliente where nombre regexp '^M';


 select * from ordenes where cantidad>1;
 /*
+----------+------------+-------------+----------+
| id_orden | id_cliente | id_producto | cantidad |
+----------+------------+-------------+----------+
|        1 |          1 |           1 |        2 |
|        3 |          3 |           3 |        3 |
|        4 |          4 |           4 |        2 |
|        6 |          6 |           6 |        2 |
|        7 |          7 |           7 |        3 |
|        8 |          8 |           8 |        2 |
|       10 |         10 |          10 |        2 |
|       11 |         11 |          11 |        3 |
|       12 |         12 |          12 |        2 |
|       14 |         14 |          14 |        2 |
|       15 |         15 |          15 |        3 |
|       16 |         16 |          16 |        2 |
|       18 |         18 |          18 |        2 |
|       19 |         19 |          19 |        3 |
|       20 |         20 |          20 |        2 |
+----------+------------+-------------+----------+
*/
select * from cliente where nombre regexp '^M';


--Consultas de ejemplo para practicar joins


select o.*, p.nombre from ordenes as o join productos as p on o.id_producto=p.id_producto;
/*
+----------+------------+-------------+----------+-------------+
| id_orden | id_cliente | id_producto | cantidad | nombre      |
+----------+------------+-------------+----------+-------------+
|        1 |          1 |           1 |        2 | Producto 1  |
|        2 |          2 |           2 |        1 | Producto 2  |
|        3 |          3 |           3 |        3 | Producto 3  |
|        4 |          4 |           4 |        2 | Producto 4  |
|        5 |          5 |           5 |        1 | Producto 5  |
|        6 |          6 |           6 |        2 | Producto 6  |
|        7 |          7 |           7 |        3 | Producto 7  |
|        8 |          8 |           8 |        2 | Producto 8  |
|        9 |          9 |           9 |        1 | Producto 9  |
|       10 |         10 |          10 |        2 | Producto 10 |
|       11 |         11 |          11 |        3 | Producto 11 |
|       12 |         12 |          12 |        2 | Producto 12 |
|       13 |         13 |          13 |        1 | Producto 13 |
|       14 |         14 |          14 |        2 | Producto 14 |
|       15 |         15 |          15 |        3 | Producto 15 |
|       16 |         16 |          16 |        2 | Producto 16 |
|       17 |         17 |          17 |        1 | Producto 17 |
|       18 |         18 |          18 |        2 | Producto 18 |
|       19 |         19 |          19 |        3 | Producto 19 |
|       20 |         20 |          20 |        2 | Producto 20 |
+----------+------------+-------------+----------+-------------+
*/
select c.nombre,p.nombre,p.precio,o.id_orden from clientes as c join or
denes as o on o.id_cliente=c.id_cliente join productos as p on p.id_producto=o.id_producto where p.precio > 50;
/*
+------------+-------------+--------+----------+
| nombre     | nombre      | precio | id_orden |
+------------+-------------+--------+----------+
| Cliente 5  | Producto 5  |  50.99 |        5 |
| Cliente 6  | Producto 6  |   60.5 |        6 |
| Cliente 7  | Producto 7  |  70.99 |        7 |
| Cliente 8  | Producto 8  |   80.5 |        8 |
| Cliente 9  | Producto 9  |  90.99 |        9 |
| Cliente 10 | Producto 10 |  100.5 |       10 |
| Cliente 11 | Producto 11 | 110.99 |       11 |
| Cliente 12 | Producto 12 |  120.5 |       12 |
| Cliente 13 | Producto 13 | 130.99 |       13 |
| Cliente 14 | Producto 14 |  140.5 |       14 |
| Cliente 15 | Producto 15 | 150.99 |       15 |
| Cliente 16 | Producto 16 |  160.5 |       16 |
| Cliente 17 | Producto 17 | 170.99 |       17 |
| Cliente 18 | Producto 18 |  180.5 |       18 |
| Cliente 19 | Producto 19 | 190.99 |       19 |
| Cliente 20 | Producto 20 |  200.5 |       20 |
+------------+-------------+--------+----------+
*/
select p.nombre from productos as p join ordenes as o on p.id_producto=o.id_producto where p.id_producto not in (select o.id_producto from ordenes) ;


select c.nombre,p.nombre, o.cantidad from clientes as c join ordenes as o on o.id_cliente=c.id_cliente join productos as p on o.id_producto=p.id_producto;
/*
+------------+-------------+----------+
| nombre     | nombre      | cantidad |
+------------+-------------+----------+
| Cliente 1  | Producto 1  |        2 |
| Cliente 2  | Producto 2  |        1 |
| Cliente 3  | Producto 3  |        3 |
| Cliente 4  | Producto 4  |        2 |
| Cliente 5  | Producto 5  |        1 |
| Cliente 6  | Producto 6  |        2 |
| Cliente 7  | Producto 7  |        3 |
| Cliente 8  | Producto 8  |        2 |
| Cliente 9  | Producto 9  |        1 |
| Cliente 10 | Producto 10 |        2 |
| Cliente 11 | Producto 11 |        3 |
| Cliente 12 | Producto 12 |        2 |
| Cliente 13 | Producto 13 |        1 |
| Cliente 14 | Producto 14 |        2 |
| Cliente 15 | Producto 15 |        3 |
| Cliente 16 | Producto 16 |        2 |
| Cliente 17 | Producto 17 |        1 |
| Cliente 18 | Producto 18 |        2 |
| Cliente 19 | Producto 19 |        3 |
| Cliente 20 | Producto 20 |        2 |
+------------+-------------+----------+
*/
select p.nombre, c.nombre from clientes as c join ordenes as o on c.id_cliente=o.id_cliente join productos as p on p.id_producto=o.id_producto;
/*
+-------------+------------+
| nombre      | nombre     |
+-------------+------------+
| Producto 1  | Cliente 1  |
| Producto 2  | Cliente 2  |
| Producto 3  | Cliente 3  |
| Producto 4  | Cliente 4  |
| Producto 5  | Cliente 5  |
| Producto 6  | Cliente 6  |
| Producto 7  | Cliente 7  |
| Producto 8  | Cliente 8  |
| Producto 9  | Cliente 9  |
| Producto 10 | Cliente 10 |
| Producto 11 | Cliente 11 |
| Producto 12 | Cliente 12 |
| Producto 13 | Cliente 13 |
| Producto 14 | Cliente 14 |
| Producto 15 | Cliente 15 |
| Producto 16 | Cliente 16 |
| Producto 17 | Cliente 17 |
| Producto 18 | Cliente 18 |
| Producto 19 | Cliente 19 |
| Producto 20 | Cliente 20 |
+-------------+------------+
*/

select o.*, c.nombre, p.nombre from ordenes as o join clientes as c on
o.id_cliente=c.id_cliente join productos as p on p.id_producto=o.id_producto;
/*
+----------+------------+-------------+----------+------------+-------------+
| id_orden | id_cliente | id_producto | cantidad | nombre     | nombre      |
+----------+------------+-------------+----------+------------+-------------+
|        1 |          1 |           1 |        2 | Cliente 1  | Producto 1  |
|        2 |          2 |           2 |        1 | Cliente 2  | Producto 2  |
|        3 |          3 |           3 |        3 | Cliente 3  | Producto 3  |
|        4 |          4 |           4 |        2 | Cliente 4  | Producto 4  |
|        5 |          5 |           5 |        1 | Cliente 5  | Producto 5  |
|        6 |          6 |           6 |        2 | Cliente 6  | Producto 6  |
|        7 |          7 |           7 |        3 | Cliente 7  | Producto 7  |
|        8 |          8 |           8 |        2 | Cliente 8  | Producto 8  |
|        9 |          9 |           9 |        1 | Cliente 9  | Producto 9  |
|       10 |         10 |          10 |        2 | Cliente 10 | Producto 10 |
|       11 |         11 |          11 |        3 | Cliente 11 | Producto 11 |
|       12 |         12 |          12 |        2 | Cliente 12 | Producto 12 |
|       13 |         13 |          13 |        1 | Cliente 13 | Producto 13 |
|       14 |         14 |          14 |        2 | Cliente 14 | Producto 14 |
|       15 |         15 |          15 |        3 | Cliente 15 | Producto 15 |
|       16 |         16 |          16 |        2 | Cliente 16 | Producto 16 |
|       17 |         17 |          17 |        1 | Cliente 17 | Producto 17 |
|       18 |         18 |          18 |        2 | Cliente 18 | Producto 18 |
|       19 |         19 |          19 |        3 | Cliente 19 | Producto 19 |
|       20 |         20 |          20 |        2 | Cliente 20 | Producto 20 |
+----------+------------+-------------+----------+------------+-------------+
*/

select o.id_orden, p.nombre, c.nombre from ordenes as o  join productos as p on p.id_producto=o.id_producto join clientes as c on c.id_cliente=o.id_cliente;
/*
+----------+-------------+------------+
| id_orden | nombre      | nombre     |
+----------+-------------+------------+
|        1 | Producto 1  | Cliente 1  |
|        2 | Producto 2  | Cliente 2  |
|        3 | Producto 3  | Cliente 3  |
|        4 | Producto 4  | Cliente 4  |
|        5 | Producto 5  | Cliente 5  |
|        6 | Producto 6  | Cliente 6  |
|        7 | Producto 7  | Cliente 7  |
|        8 | Producto 8  | Cliente 8  |
|        9 | Producto 9  | Cliente 9  |
|       10 | Producto 10 | Cliente 10 |
|       11 | Producto 11 | Cliente 11 |
|       12 | Producto 12 | Cliente 12 |
|       13 | Producto 13 | Cliente 13 |
|       14 | Producto 14 | Cliente 14 |
|       15 | Producto 15 | Cliente 15 |
|       16 | Producto 16 | Cliente 16 |
|       17 | Producto 17 | Cliente 17 |
|       18 | Producto 18 | Cliente 18 |
|       19 | Producto 19 | Cliente 19 |
|       20 | Producto 20 | Cliente 20 |
+----------+-------------+------------+
*/