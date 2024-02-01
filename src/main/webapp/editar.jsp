<%-- 
    Document   : editar
    Created on : 31/01/2024, 7:36:33 p. m.
    Author     : crDT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="logica.Usuario"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Usuario</title>
    </head>
    <body>
        <%
            //recuperamos el usuario a editar de la sesion
            Usuario user = (Usuario) request.getSession().getAttribute("usuarioEditar");
        %>
        <h1>Datos del Usuario</h1>
        <form action="SvEditar" method="POST">
            <p><label>Dni: </label> <input type="text" name="dni" value ="<%=user.getDni()%>" ></p>
            <p><label>Nombre: </label> <input type="text" name="nombre" value ="<%=user.getNombre()%>"></p>
            <p><label>Apellido: </label> <input type="text" name="apellido" value ="<%=user.getApellido()%>"></p>
            <p><label>Telefono: </label> <input type="text" name="telefono" value ="<%=user.getTelefono()%>"></p>
            <button type="submit"> Guardar </button>
        </form>
        
    </body>
</html>
