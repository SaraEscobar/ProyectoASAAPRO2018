package mx.com.asa.controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mx.com.asa.servlets.fillTablaAdmin;

@WebServlet("/servletFillAdmin")
public class servletFillAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public servletFillAdmin() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.getRequestDispatcher("administradores.jsp").forward(request, response);
	     String nombreAd=request.getParameter("nombreAd");
		 fillTablaAdmin cargar=new fillTablaAdmin();
		 cargar.getAdmin(nombreAd);
		doGet(request, response);
	}

}


