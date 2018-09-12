package mx.com.asa.servlets;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class validaciones {
	Boolean banderanombre = false;
     public String cargos;
     public static String cargos2;
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		String url = "jdbc:sqlserver://ARANGELALV:1433;databaseName=AdminProveedores;user=sa;password=1695662Sara";
		String sql = "select cargo_admin from apro_c_admin";
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url);
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while (rs.next() == true) {
	         cargos2= rs.getString(1);
	         System.out.println("Cargo"+cargos2);
		}
	}
	
	public void validarNombreAd(String nombreAd) throws ClassNotFoundException, SQLException {
		String drivernom = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		String urlnom = "jdbc:sqlserver://ARANGELALV:1433;databaseName=AdminProveedores;user=sa;password=1695662Sara";
		String sqlnom = "execute BusquedaNom '" + nombreAd + "'";
		Class.forName(drivernom);
		Connection connom = DriverManager.getConnection(urlnom);
		PreparedStatement psnom = connom.prepareStatement(sqlnom);
		ResultSet rsnom = psnom.executeQuery();
		if (rsnom.next() == true) {
			String resultado = rsnom.getString("nombreAd"); // Sara
			
			if (nombreAd.equals(resultado)) {
				banderanombre = true;
	
			}
			 else if (nombreAd == "") {
				JOptionPane.showMessageDialog(null, "Llene el campo");
			} else {
				JOptionPane.showMessageDialog(null, "No hay coincidencias");

			}
			
		}
	}
	
	 //************metodo para llenar el combo cargo:*****************
	
	public void comboCargo() throws ClassNotFoundException, SQLException {
		
		String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		String url = "jdbc:sqlserver://ARANGELALV:1433;databaseName=AdminProveedores;user=sa;password=1695662Sara";
		String sql = "select cargo_admin from apro_c_admin";
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url);
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while (rs.next() == true) {
	         cargos=   rs.getString(1);
	         System.out.print("CARGO"+cargos);
		}
	}
	
	 //*****************metodo para llenar el combo area:******************
	public void comboArea() throws ClassNotFoundException, SQLException {
		String driver2 = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		String url2 = "jdbc:sqlserver://ARANGELALV:1433;databaseName=AdminProveedores;user=sa;password=1695662Sara";
		String sql2 = "select nombre_area from apro_c_area";
		Class.forName(driver2);
		Connection con2 = DriverManager.getConnection(url2);
		PreparedStatement ps2 = con2.prepareStatement(sql2);
		ResultSet rs2 = ps2.executeQuery();
		while (rs2.next() == true) {
	           cargos2 = rs2.getString(1);
	}

	}
		
	}
