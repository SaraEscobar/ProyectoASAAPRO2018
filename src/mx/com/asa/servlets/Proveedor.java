package mx.com.asa.servlets;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.swing.JOptionPane;
import mx.com.asa.conexion.conexion;
import mx.com.asa.model.BeansProvee;

public class Proveedor {
	
	public static BeansProvee agregarProveedor(String rfc_proveedor,String nombre_c_proveedor,String nombreResp_c_proveedor,String apePatResp_c_proveedor,String apeMatResp_c_proveedor,
	String tel_c_proveedor,String extension_c_proveedor){
		
    BeansProvee objPro = null;
	Connection accesoBDpro = conexion.getConnection();
	
    try {
      PreparedStatement ps = accesoBDpro.prepareStatement("insert into apro_c_proveedor(rfc_proveedor,nombre_c_proveedor,nombreResp_c_proveedor,apePatResp_c_proveedor,apeMatResp_c_proveedor,tel_c_proveedor,extension_c_proveedor) VALUES (?,?,?,?,?,?,?)");	
      ps.setString(1, rfc_proveedor);
      ps.setString(2, nombre_c_proveedor);
      ps.setString(3, nombreResp_c_proveedor);
      ps.setString(4, apePatResp_c_proveedor);
      ps.setString(5, apeMatResp_c_proveedor);
      ps.setString(6, tel_c_proveedor);
      ps.setString(7, extension_c_proveedor);
      ps.executeUpdate();	   

      JOptionPane.showMessageDialog(null, "insersion hecha");
	    	System.out.println("Insersion exitosa baby 8)!! ");
	    	 ps.close();
} catch (Exception e) {
            JOptionPane.showMessageDialog(null, "No se ha podido establecer la conexión con la DB" + e);
            e.printStackTrace();
        }
	return objPro;
}
}