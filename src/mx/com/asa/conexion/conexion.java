package mx.com.asa.conexion;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;


public class conexion {
	public static Connection cn;
	public boolean bandera = false;
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		
		
		//PUEBA DE CONEXION
		/*Connection pruebacn = conexion.getConnection();
		if (pruebacn != null) {
			System.out.println("Conectado");
			System.out.println(pruebacn);
			java.sql.Statement stm = pruebacn.createStatement();
		} else {
			System.out.println("Desconectado");
		}*/
	
	//FIN DE CONEXION PRUEBA
	}
	public void comparar(String usuario, String password) throws SQLException, ClassNotFoundException {
		String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		String url = "jdbc:sqlserver://ARANGELALV:1433;databaseName=AdminProveedores;user=sa;password=1695662Sara";
		String sql = "select user_admin, password_admin FROM apro_c_admin WHERE user_admin='" + usuario + "'";
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url);
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while (rs.next() == true) {
			String resultadouser = rs.getString(1); // sara
			String resultadopass = rs.getString(2); // 1234
			if (usuario.equals(resultadouser)) {
				if (password.equals(resultadopass)) {
					bandera = true;
				} else {
					JOptionPane.showMessageDialog(null,"Error de Autentificación en credenciales de seguridad");
					//System.out.println("Error de Autentificación en credenciales de seguridad");
				}
			}
		}
	}
	 
//METODO DE PRUEBA DE CONEXION1 NO LA USO EN EL CODIGO DE COMPARACION
	public static Connection getConnection() {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			cn =  DriverManager.getConnection("jdbc:sqlserver://ARANGELALV:1433;databaseName=AdminProveedores","sa","1695662Sara");
			System.out.println("Conexion exitosa!!");
		} catch (Exception e) {
			cn = null;
		}
		return cn;
	}
	 public Connection getConexion(){
		  return cn;
		 }
		 public void cerrarConexion(){
		  try {
		   cn.close();
		  } catch (SQLException e) {
		   e.printStackTrace();
		  }
		 }
		 
			 
			} 

			

