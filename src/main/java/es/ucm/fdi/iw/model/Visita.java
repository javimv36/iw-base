package es.ucm.fdi.iw.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Visita {
	private enum TIPO {
		EVENTO, LIBRE, TRABAJO, VISITA
	}
	private long id;
	private String direccion;
	private String fecha;
	private String horaIni;
	private String horaFin;
	private String detalles;
	private int importeEstimado;
	private int importeFinal;
	private int telefono;
	private String nombre;
	private String nota;
	private TIPO tipo;
	
	@Id
	@GeneratedValue
	public long getId() {
	return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}	
	
	public String getDireccion() {
		return direccion;
	}
	
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public String getHoraIni() {
		return horaIni;
	}

	public void setHoraIni(String horaIni) {
		this.horaIni = horaIni;
	}

	public String getHoraFin() {
		return horaFin;
	}

	public void setHoraFin(String horaFin) {
		this.horaFin = horaFin;
	}

	public String getDetalles() {
		return detalles;
	}

	public void setDetalles(String detalles) {
		this.detalles = detalles;
	}

	public int getImporteEstimado() {
		return importeEstimado;
	}

	public void setImporteEstimado(int importeEstimado) {
		this.importeEstimado = importeEstimado;
	}

	public int getImporteFinal() {
		return importeFinal;
	}

	public void setImporteFinal(int importeFinal) {
		this.importeFinal = importeFinal;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getNota() {
		return nota;
	}

	public void setNota(String nota) {
		this.nota = nota;
	}

	public int getTelefono() {
		return telefono;
	}

	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}

	public TIPO getTipo() {
		return tipo;
	}

	public void setTipo(TIPO tipo) {
		this.tipo = tipo;
	}
}
