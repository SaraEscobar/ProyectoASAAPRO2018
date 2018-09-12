package mx.com.asa.model;

//import javax.xml.crypto.NoSuchMechanismException;
public class BeansAdmin {
	public String tipoUsuario_admin;
	public String numeroEmpelado_admin;
	public String rol_admin;
	public String nombre_admin;
	public String primerApellido_admin;
	public String segundoApellido_admin;
	public String cargo_admin;
	public String area_admin;
	public String telefono_admin;
	public String extension_admin;
	public String fechaInicio_admin;
	public String fechaFinal_admin;
	public String estatus;
	public String user_admin;
	public String password_admin;
	
	public BeansAdmin(String tipoUsuario_admin, String numeroEmpelado_admin, String rol_admin, String nombre_admin,
			String primerApellido_admin, String segundoApellido_admin, String cargo_admin, String area_admin,
			String telefono_admin, String extension_admin, String fechaInicio_admin, String fechaFinal_admin,
			String estatus, String user_admin, String password_admin) {
		super();
		this.tipoUsuario_admin = tipoUsuario_admin;
		this.numeroEmpelado_admin = numeroEmpelado_admin;
		this.rol_admin = rol_admin;
		this.nombre_admin = nombre_admin;
		this.primerApellido_admin = primerApellido_admin;
		this.segundoApellido_admin = segundoApellido_admin;
		this.cargo_admin = cargo_admin;
		this.area_admin = area_admin;
		this.telefono_admin = telefono_admin;
		this.extension_admin = extension_admin;
		this.fechaInicio_admin = fechaInicio_admin;
		this.fechaFinal_admin = fechaFinal_admin;
		this.estatus = estatus;
		this.user_admin = user_admin;
		this.password_admin = password_admin;
		
		 System.out.println("Beans");  
			System.out.println("Bienvenido desde el Beans de Administrador");
	}
	public String getTipoUsuario_admin() {
		return tipoUsuario_admin;
	}
	public void setTipoUsuario_admin(String tipoUsuario_admin) {
		this.tipoUsuario_admin = tipoUsuario_admin;
	}
	public String getNumeroEmpelado_admin() {
		return numeroEmpelado_admin;
	}
	public void setNumeroEmpelado_admin(String numeroEmpelado_admin) {
		this.numeroEmpelado_admin = numeroEmpelado_admin;
	}
	public String getRol_admin() {
		return rol_admin;
	}
	public void setRol_admin(String rol_admin) {
		this.rol_admin = rol_admin;
	}
	public String getNombre_admin() {
		return nombre_admin;
	}
	public void setNombre_admin(String nombre_admin) {
		this.nombre_admin = nombre_admin;
	}
	public String getPrimerApellido_admin() {
		return primerApellido_admin;
	}
	public void setPrimerApellido_admin(String primerApellido_admin) {
		this.primerApellido_admin = primerApellido_admin;
	}
	public String getSegundoApellido_admin() {
		return segundoApellido_admin;
	}
	public void setSegundoApellido_admin(String segundoApellido_admin) {
		this.segundoApellido_admin = segundoApellido_admin;
	}
	public String getCargo_admin() {
		return cargo_admin;
	}
	public void setCargo_admin(String cargo_admin) {
		this.cargo_admin = cargo_admin;
	}
	public String getArea_admin() {
		return area_admin;
	}
	public void setArea_admin(String area_admin) {
		this.area_admin = area_admin;
	}
	public String getTelefono_admin() {
		return telefono_admin;
	}
	public void setTelefono_admin(String telefono_admin) {
		this.telefono_admin = telefono_admin;
	}
	public String getExtension_admin() {
		return extension_admin;
	}
	public void setExtension_admin(String extension_admin) {
		this.extension_admin = extension_admin;
	}
	public String getFechaInicio_admin() {
		return fechaInicio_admin;
	}
	public void setFechaInicio_admin(String fechaInicio_admin) {
		this.fechaInicio_admin = fechaInicio_admin;
	}
	public String getFechaFinal_admin() {
		return fechaFinal_admin;
	}
	public void setFechaFinal_admin(String fechaFinal_admin) {
		this.fechaFinal_admin = fechaFinal_admin;
	}
	public String getEstatus() {
		return estatus;
	}
	public void setEstatus(String estatus) {
		this.estatus = estatus;
	}
	public String getUser_admin() {
		return user_admin;
	}
	public void setUser_admin(String user_admin) {
		this.user_admin = user_admin;
	}
	public String getPassword_admin() {
		return password_admin;
	}
	public void setPassword_admin(String password_admin) {
		this.password_admin = password_admin;
	}

}
