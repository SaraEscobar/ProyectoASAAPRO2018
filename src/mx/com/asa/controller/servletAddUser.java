package mx.com.asa.controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mx.com.asa.model.BeansUsuario;
import mx.com.asa.servlets.usuarios;

@WebServlet("/servletAddUser")
public class servletAddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public servletAddUser() {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
	         response.setContentType("text/html; charset=ISO-8859-1");	         
	         String nombre, apellido, numero, fechaInicio_admin;
	         nombre = request.getParameter("nombre");
	         apellido = request.getParameter("apellido");
	         numero = request.getParameter("numero");
	         fechaInicio_admin = request.getParameter("fechaInicio_admin");
	         //fechaInicio_admin = Date.valueOf(request.getParameter("fechaInicio_admin").toString());
	         System.out.println("Servlet");
	         BeansUsuario nuevo = new BeansUsuario(nombre, apellido, numero, fechaInicio_admin);
	         System.out.println("Bienvenido desde el servlet");
			 nuevo = usuarios.agregarUsuarios(apellido, nombre, numero,fechaInicio_admin);
			 request.getRequestDispatcher("pruebaDatos.jsp").forward(request, response); 
			 doGet(request, response);			 
	}
}


