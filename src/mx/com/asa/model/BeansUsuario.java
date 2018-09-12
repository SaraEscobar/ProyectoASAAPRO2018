package mx.com.asa.model;
public class BeansUsuario {
	 private String nombre;
	 private String apellido;
	 private String numero;
	 public String fechaInicio_admin;
	 
	 
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public String getNumero() {
		return numero;
	}
	public void setNumero(String numero) {
		this.numero = numero;
	}
	public String getFechaInicio_admin() {
		return fechaInicio_admin;
	}
	public void setFechaInicio_admin(String fechaInicio_admin) {
		this.fechaInicio_admin = fechaInicio_admin;
	}
	public BeansUsuario(String nombre, String apellido, String numero, String fechaInicio_admin) {
		super();
		this.nombre = nombre;
		this.apellido = apellido;
		this.numero = numero;
		this.fechaInicio_admin = fechaInicio_admin;
	}
	
}
