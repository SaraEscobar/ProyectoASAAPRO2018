package mx.com.asa.servlets;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;

/*import java.sql.DriverManager;
import java.sql.ResultSet;
import javax.servlet.jsp.tagext.TryCatchFinally;
import javax.swing.JOptionPane;
import org.apache.jasper.tagplugins.jstl.core.Catch;*/

import javax.swing.JOptionPane;
import mx.com.asa.conexion.conexion;
import mx.com.asa.model.BeansUsuario;

public class usuarios {
	public static BeansUsuario agregarUsuarios(String nombre , String apellido, String numero, String fechaInicio_admin) {
		BeansUsuario obj = null;
		Connection accesoBD = conexion.getConnection();
				
	    try {
	    	PreparedStatement ps = accesoBD.prepareStatement("INSERT INTO pruebaDatos(nombre,apellido,numero,fechaInicio_admin) VALUES (?,?,?,?)");	
	      ps.setString(1, nombre);
	      ps.setString(2, apellido);
	      ps.setString(3, numero);
	      ps.setString(4, fechaInicio_admin);
	      /*SimpleDateFormat formatear = new SimpleDateFormat("dd/mm/yyyy");
          SimpleDateFormat formateador = new SimpleDateFormat("yyyy/mm/dd");
          Date fecha = (Date) formatear.parse(obj.getFechaInicio_admin());
          String fechaS = formateador.format(fecha);
          ps.setString(4, fechaS);*/
	      
	      /*SimpleDateFormat formatear = new SimpleDateFormat("yyyy/mm/dd");
          Date fecha = (Date) formatear.parse((fechaInicio_admin).toString());
          System.out.println("Fecha "+ fecha);   
          ps.setDate(11, fechaInicio_admin);*/
          
	      ps.executeUpdate();	 
	            JOptionPane.showMessageDialog(null, "insersion hecha");
		    	System.out.println("Insersion exitosa baby 8)!! ");
		    	 ps.close();
	} catch (Exception e) {
	            JOptionPane.showMessageDialog(null, "No se ha podido establecer la conexión con la DB" + e);
	            e.printStackTrace();
	        }
		return obj;
	}
	}
	
		

	

