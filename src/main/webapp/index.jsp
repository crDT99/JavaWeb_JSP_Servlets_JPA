<%-- 
    Document   : index.jsp
    Created on : 29/01/2024, 3:08:32 p. m.
    Author     : crDT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario de Prueba</title>
    </head>
    <body>
        <h1>Datos del Usuario</h1>
        <form action="SvUsuarios" method="POST">
            <p><label>Dni: </label> <input type="text" name="dni"></p>
            <p><label>Nombre: </label> <input type="text" name="nombre"></p>
            <p><label>Apellido: </label> <input type="text" name="apellido"></p>
            <p><label>Telefono: </label> <input type="text" name="telefono"></p>
            <button type="submit"> Enviar </button>
        </form>
        
        <h1>Ver lista de Usuarios</h1>
        <p> Para ver los Datos de los ususarios cargados, haga click en el siguiente botón</p>
        <form action="SvUsuarios" method="GET">
            <button type="submit"> Mostrar Usuarios </button>
        </form>
        
        
        <h1> Eliminar Usuario Por ID</h1>
        <p> Ingrese el ID del Usuario que quiere eliminar</p>
        <form action="SvElimar" method="POST">
            <p><label>Id: </label> <input type="text" name="idUsuario"></p>
            <button type="submit"> Eliminar Usuario </button>
        </form>
        
        <h1> Editar Usuario Por ID</h1>
        <p> Ingrese el ID del Usuario que quiere editar</p>
        <form action="SvEditar" method="GET">
            <p><label>Id: </label> <input type="text" name="idUsuarioEdit"></p>
            <button type="submit"> Editar Usuario </button>
        </form>
        
        
        
    </body>
</html>
