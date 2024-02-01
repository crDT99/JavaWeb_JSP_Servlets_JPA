package logica;

import java.util.List;
import persitencia.ControladoraPersistencia;

public class ControladoraLogica {
    // instancia de la  Controladora de Persistencia
    ControladoraPersistencia controlPersis = new ControladoraPersistencia();
    
    public void crearUsusario(Usuario usu){
        controlPersis.crearUsuario(usu);
        
    }
    
    public List<Usuario> traerUsuarios(){
        return controlPersis.traerUsuarios();
    }

    public void borrarUsuario(int idEliminar) {
        controlPersis.borrarUsuario(idEliminar);
    }

    public Usuario traerUsuario(int idEditar) {
        return controlPersis.traerUsuario(idEditar);
    }

    public void editarUsusario(Usuario user) {
        controlPersis.editarUsuario(user);
    }
    
    
}
