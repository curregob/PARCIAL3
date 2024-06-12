<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BIBLIOTECA</title>
</head>
<body>
<h1>Bienvenidos a la biblioteca Tintal</h1>

<sql:setDataSource var="dbSource" driver="com.mysql.cj.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/tintal"
                   user="dba" password="123456789.eT"/>
                   
<sql:query dataSource="${dbSource}" var="libros">
    SELECT * FROM Libros;
</sql:query>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Titulo</th>
        <th>Autor</th>
        <th>Paginas</th>
        <th>Seccion</th>
        <th>Genero</th>
        <th>Edad recomendada</th>
        <th>Fecha de prestamo</th>
        <th>Fecha de entrega</th>
    </tr>
    <c:forEach var="fila" items="${libros.rows}">
        <tr>
            <td>${fila.id}</td>
            <td>${fila.titulo}</td>
            <td>${fila.autor}</td>
            <td>${fila.paginas}</td>
            <td>${fila.seccion}</td>
            <td>${fila.genero}</td>
            <td>${fila.edad_recomendada}</td>
            <td>${fila.fecha_de_prestamo}</td>
            <td>${fila.fecha_de_entrega}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>