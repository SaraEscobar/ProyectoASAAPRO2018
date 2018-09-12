package mx.com.asa.model;

public class BeansProvee {
	String rfc_proveedor;
	String nombre_c_proveedor;
	String nombreResp_c_proveedor;
	String apePatResp_c_proveedor;
	String apeMatResp_c_proveedor;
	String tel_c_proveedor;
	String extension_c_proveedor;
	
	public String getRfc_proveedor() {
		return rfc_proveedor;
	}
	public void setRfc_proveedor(String rfc_proveedor) {
		this.rfc_proveedor = rfc_proveedor;
	}
	public String getNombre_c_proveedor() {
		return nombre_c_proveedor;
	}
	public void setNombre_c_proveedor(String nombre_c_proveedor) {
		this.nombre_c_proveedor = nombre_c_proveedor;
	}
	public String getNombreResp_c_proveedor() {
		return nombreResp_c_proveedor;
	}
	public void setNombreResp_c_proveedor(String nombreResp_c_proveedor) {
		this.nombreResp_c_proveedor = nombreResp_c_proveedor;
	}
	public String getApePatResp_c_proveedor() {
		return apePatResp_c_proveedor;
	}
	public void setApePatResp_c_proveedor(String apePatResp_c_proveedor) {
		this.apePatResp_c_proveedor = apePatResp_c_proveedor;
	}
	public String getApeMatResp_c_proveedor() {
		return apeMatResp_c_proveedor;
	}
	public void setApeMatResp_c_proveedor(String apeMatResp_c_proveedor) {
		this.apeMatResp_c_proveedor = apeMatResp_c_proveedor;
	}
	public String getTel_c_proveedor() {
		return tel_c_proveedor;
	}
	public void setTel_c_proveedor(String tel_c_proveedor) {
		this.tel_c_proveedor = tel_c_proveedor;
	}
	public String getExtension_c_proveedor() {
		return extension_c_proveedor;
	}
	public void setExtension_c_proveedor(String extension_c_proveedor) {
		this.extension_c_proveedor = extension_c_proveedor;
	}
	public BeansProvee(String rfc_proveedor, String nombre_c_proveedor, String nombreResp_c_proveedor,
			String apePatResp_c_proveedor, String apeMatResp_c_proveedor, String tel_c_proveedor,
			String extension_c_proveedor) {
		super();
		this.rfc_proveedor = rfc_proveedor;
		this.nombre_c_proveedor = nombre_c_proveedor;
		this.nombreResp_c_proveedor = nombreResp_c_proveedor;
		this.apePatResp_c_proveedor = apePatResp_c_proveedor;
		this.apeMatResp_c_proveedor = apeMatResp_c_proveedor;
		this.tel_c_proveedor = tel_c_proveedor;
		this.extension_c_proveedor = extension_c_proveedor;
	}
	
}
