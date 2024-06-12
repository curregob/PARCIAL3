<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<sql:setDataSource var="dbSource" driver="com.mysql.cj.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/tintal"
                   user="dba" password="123456789.eT"/>

<sql:update dataSource="${dbSource}">
    INSERT INTO libros (titulo, autor, paginas, seccion, genero, edad_recomendada, fecha_de_prestamo, fecha_de_entrega) 
    VALUES ('${param.Titulo}', '${param.Autor}','${param.Paginas}', '${param.Seccion}', '${param.Genero}', '${param.Edad}', 
    '${param.Prestamo}', '${param.Entrega}');
</sql:update>

<c:redirect url="index.jsp"/>