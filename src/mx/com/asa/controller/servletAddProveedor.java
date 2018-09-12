package mx.com.asa.controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mx.com.asa.model.BeansProvee;
import mx.com.asa.servlets.Proveedor;

@WebServlet("/servletAddProveedor")
public class servletAddProveedor extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public servletAddProveedor() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=ISO-8859-1");	
         String  rfc_proveedor, nombre_c_proveedor,nombreResp_c_proveedor,apePatResp_c_proveedor,apeMatResp_c_proveedor,
         tel_c_proveedor,extension_c_proveedor;
         
         //tipoUsuario_admin = request.getParameter("tipoUsuario_admin");
         rfc_proveedor = request.getParameter("rfc_proveedor");
         nombre_c_proveedor = request.getParameter("nombre_c_proveedor");
         nombreResp_c_proveedor = request.getParameter("nombreResp_c_proveedor");
         apePatResp_c_proveedor = request.getParameter("apePatResp_c_proveedor");
         apeMatResp_c_proveedor = request.getParameter("apeMatResp_c_proveedor");
         tel_c_proveedor = request.getParameter("tel_c_proveedor");
         extension_c_proveedor = request.getParameter(" extension_c_proveedor");
         
         BeansProvee nuevoPro = new BeansProvee(rfc_proveedor, nombre_c_proveedor,nombreResp_c_proveedor,apePatResp_c_proveedor,apeMatResp_c_proveedor,tel_c_proveedor,
                 extension_c_proveedor);
         
 		System.out.println("Bienvenido desde el servlet de Poroveedores");
		
 		nuevoPro = Proveedor.agregarProveedor(rfc_proveedor, nombre_c_proveedor, nombreResp_c_proveedor, apePatResp_c_proveedor, apeMatResp_c_proveedor, tel_c_proveedor,
 				  extension_c_proveedor);
 		request.getRequestDispatcher("agregarProveedor.jsp").forward(request, response); 
         doGet(request, response);
	}
	


}
