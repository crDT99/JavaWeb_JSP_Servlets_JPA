<%-- 
    Document   : mostrarUsuarios
    Created on : 29/01/2024, 8:17:40 p. m.
    Author     : crDT
--%>

<%@page import="java.util.List"%>
<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar Usuarios</title>
    </head>
    <body>
        <h1> Lista de Usuarios Registrados</h1>
        <%
            List<Usuario> listaUsuario = (List) request.getSession().getAttribute("listaUsuarios");
            int cont = 1;
            for(Usuario usu: listaUsuario)
            {
        %>
                <p><b>Usuario №:<%=cont%></b></p>
                <p>id:<%=usu.getId()%> </p>
                <p>Dni:<%=usu.getDni()%> </p>
                <p>Nombre: <%=usu.getNombre()%> </p>
                <p>Apellido: <%=usu.getApellido()%> </p>
                <p>Telefono: <%=usu.getTelefono()%> </p>
                <p>----------------------------------</p>
                <%cont++;%>
        <%
            }
        %>
        
        
        
        
    </body>
</html>
