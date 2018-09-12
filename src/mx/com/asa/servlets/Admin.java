package mx.com.asa.servlets;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.swing.JOptionPane;
import mx.com.asa.conexion.conexion;
import mx.com.asa.model.BeansAdmin;

public class Admin {
	
	public static BeansAdmin  agregarAdmin(BeansAdmin admin) {
		
		
		BeansAdmin obj = null;
	    try {
	    	Connection accesoBD = conexion.getConnection();
	    	PreparedStatement ps = accesoBD.prepareStatement("insert into apro_c_admin(tipoUsuario_admin,numeroEmpelado_admin,rol_admin,"
	    			+ "nombre_admin,primerApellido_admin,segundoApellido_admin,cargo_admin,area_admin,telefono_admin,"
	    			+ "extension_admin,fechaInicio_admin,fechaFinal_admin,estatus,user_admin,password_admin) VALUES ('"+admin.getTipoUsuario_admin()+"','"+admin.numeroEmpelado_admin+"','"+admin.rol_admin+"','"+admin.nombre_admin+"',"
	    			+ "'"+admin.primerApellido_admin+"','"+admin.segundoApellido_admin+"','"+admin.cargo_admin+"','"+admin.area_admin+"','"+admin.telefono_admin+"','"+admin.extension_admin+"','"+admin.fechaInicio_admin+"',"
	    			+ "'"+admin.fechaFinal_admin+"','"+admin.estatus+"','"+admin.user_admin+"','"+admin.cargo_admin+"')");	
	      
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
	
	

	/*public static boolean agregarUsuario(BeanUsuario usuario){
		  boolean agregado=false;
		  try {
		   Conexion c=new Conexion();
		   Connection con=c.getConexion();
		   if(con!=null){
		    Statement st;
		    st = con.createStatement();
		    st.executeUpdate("INSERT INTO Usuario(`Nombre`,`Apellido`,`Edad`, `Correo`,`Usuario`,`Clave`) VALUES ('"+usuario.getNombre()+"','"+usuario.getApellido()+"',"+usuario.getEdad()+",'"+usuario.getCorreo()+"','"+usuario.getUsuario()+"','"+usuario.getClave()+"')");
		    agregado=true;
		    st.close();
		   }
		   c.cerrarConexion();
		  } catch (SQLException e) {
		   agregado=false;
		   e.printStackTrace();
		  }
		  return agregado;
		 }
*/

}
	
	
