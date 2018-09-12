package mx.com.asa.controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mx.com.asa.model.BeansAdmin;
import mx.com.asa.servlets.Admin;

@WebServlet("/servletAddAdministrator")
public class servletAddAdministrator extends HttpServlet {
	private static final long serialVersionUID = 1L;  
    public servletAddAdministrator() {
        super();  
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		 response.setContentType("text/html; charset=ISO-8859-1");
		 
         String  tipoUsuario_admin,numeroEmpelado_admin, rol_admin, nombre_admin, primerApellido_admin,
         segundoApellido_admin, cargo_admin, area_admin, telefono_admin, extension_admin, fechaFinal_admin, fechaInicio_admin, estatus, user_admin, password_admin;
		
		 tipoUsuario_admin = request.getParameter("tipoUsuario_admin");
		 request.setAttribute("tipoUsuario_admin", tipoUsuario_admin); //revisa es prueba
         numeroEmpelado_admin = request.getParameter("numeroEmpelado_admin");
         rol_admin = request.getParameter("rol_admin");
         nombre_admin = request.getParameter("nombre_admin");
         primerApellido_admin = request.getParameter("primerApellido_admin");
         segundoApellido_admin = request.getParameter("segundoApellido_admin");
         cargo_admin = request.getParameter("cargo_admin");
         area_admin = request.getParameter("area_admin");
         telefono_admin = request.getParameter("telefono_admin");
         extension_admin = request.getParameter("extension_admin");
         fechaInicio_admin = request.getParameter("fechaInicio_admin");
         fechaFinal_admin = request.getParameter("fechaFinal_admin");
         estatus = request.getParameter("estatus");
         user_admin = request.getParameter("user_admin");
         password_admin = request.getParameter("password_admin");
     
         BeansAdmin BeansagregarAdmin = new BeansAdmin(tipoUsuario_admin,numeroEmpelado_admin, rol_admin, nombre_admin, primerApellido_admin,
         segundoApellido_admin, cargo_admin, area_admin, telefono_admin, extension_admin, fechaFinal_admin, fechaInicio_admin, estatus, user_admin, password_admin);
         Admin add = new Admin();
         Admin.agregarAdmin(BeansagregarAdmin);
    
         System.out.println("Servlet");  
		System.out.println("Bienvenido desde el servlet de Administrador");
		 request.getRequestDispatcher("agregarAdmin.jsp").forward(request, response); 
		 doGet(request, response);	
		 
	}
}
