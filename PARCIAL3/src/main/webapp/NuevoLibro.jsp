<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NUEVO LIBRO</title>
</head>
<body>
<h1>INGRESAR LOS DATOS DEL LIBRO</h1>

<form action="AgregarLibro.jsp" method="post">
    Titulo: <input type="text" name="Titulo"/><br/>
    Autor: <input type="text" name="Autor"/><br/>
    Paginas: <input type="text" name="Paginas"/><br/>
    Seccion: <input type="text" name="Seccion"/><br/>
    Genero: <input type="text" name="Genero"/><br/>
   	Edad recomendada: <input type="text" name="Edad"/><br/>
   	Fecha prestamo: <input type="text" name="Prestamo"/><br/>
   	Fecha entrega: <input type="text" name="Entrega"/><br/>
    <input type="submit" value="Agregar Libro"/>
</form>
</body>
</html>