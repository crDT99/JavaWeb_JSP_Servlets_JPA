package com.myweppage.primerservlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.ControladoraLogica;
import logica.Usuario;


@WebServlet(name = "SvEditar", urlPatterns = {"/SvEditar"})
public class SvEditar extends HttpServlet {

    //instancia de la controladora logica (tambien se puede pasar por sesion)
     ControladoraLogica controlL = new ControladoraLogica();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int idEditar = Integer.parseInt(request.getParameter("idUsuarioEdit"));
        Usuario user = controlL.traerUsuario(idEditar);
        
        //se guarda como atributo de sesion para mantenerlo tras el redireccionamiento
        HttpSession miSesion = request.getSession();
        miSesion.setAttribute("usuarioEditar", user);
        
        
        response.sendRedirect("editar.jsp");
        
        
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
                
        String dni = request.getParameter("dni");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String telefono = request.getParameter("telefono");
        
        //--- creamos el usuario y le asignamos los valores
        
        //cargar el usuario anterior
        Usuario user = (Usuario) request.getSession().getAttribute("usuarioEditar");
     
        //sobreescritura con los nuevos valores
        user.setDni(dni);
        user.setNombre(nombre);
        user.setApellido(apellido);
        user.setTelefono(telefono);
        
        
        controlL.editarUsusario(user);
        
        response.sendRedirect("index.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
