package mx.com.asa.servlets;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedList;
import mx.com.asa.model.BeansFillTableAdmin;

public class fillTablaAdmin {
	public static LinkedList<BeansFillTableAdmin> getAdmin(String nombreAd)
	   {
	      LinkedList<BeansFillTableAdmin> listaAdmin=new LinkedList<BeansFillTableAdmin>();
	      try
	      
	      {
	    	  String drivernom = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
				String urlnom = "jdbc:sqlserver://ARANGELALV:1433;databaseName=AdminProveedores;user=sa;password=1695662Sara";
				String sqlnom = "execute BusquedaNomb '" + nombreAd + "'";
				Class.forName(drivernom);
				Connection connom = DriverManager.getConnection(urlnom);
				PreparedStatement psnom = connom.prepareStatement(sqlnom);
				ResultSet rsnom = psnom.executeQuery();
	         while (rsnom.next())
	         { 
	        	 
	        	BeansFillTableAdmin cons = new BeansFillTableAdmin();
	        	String tipoUsuario_admin = cons.setTipoUsuario_admin(rsnom.getString(1));
	        	String numeroEmpelado_admin =  cons.setNumeroEmpelado_admin(rsnom.getString(2));
	        	String rol_admin = cons.setRol_admin(rsnom.getString(3));
	        	String nombre_admin = cons.setNombre_admin(rsnom.getString(4));
	        	String primerApellido_admin = cons.setPrimerApellido_admin(rsnom.getString(5));
	        	String segundoApellido_admin = cons.setSegundoApellido_admin(rsnom.getString(6));
	        	String cargo_admin = cons.setCargo_admin(rsnom.getString(7));
	        	String area_admin = cons.setArea_admin(rsnom.getString(8));
	        	String telefono_admin = cons.setTelefono_admin(rsnom.getString(9));
	        	String extension_admin = cons.setExtension_admin(rsnom.getString(10));
	        	String fechaInicio_admin = cons.setFechaInicio_admin(rsnom.getString(11));
	        	String fechaFinal_admin = cons.setFechaFinal_admin(rsnom.getString(12));
	        	String estatus = cons.setEstatus(rsnom.getString(13));
	        	String user_admin = cons.setUser_admin(rsnom.getString(14));
	        	String password_admin = cons.setPassword_admin(rsnom.getString(15));
	        	
	        	BeansFillTableAdmin consultAdmin = new BeansFillTableAdmin(tipoUsuario_admin, numeroEmpelado_admin, rol_admin, nombre_admin,
	        			primerApellido_admin, segundoApellido_admin, cargo_admin, area_admin, telefono_admin, extension_admin, fechaInicio_admin, 
	        			fechaFinal_admin, estatus, user_admin, password_admin);
	        	
	        	listaAdmin.add(consultAdmin);
	        	   		
	         }
	         rsnom.close();
	         rsnom.close();
	       
	      }
	      catch (Exception e)
	      {
	         e.printStackTrace();
	      }
	      return listaAdmin;
	   }

}
