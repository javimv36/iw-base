package es.ucm.fdi.iw.model;

import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;

import java.sql.Date;
@Entity

public class Ruta {
	private long id;
	private int importeTotal;
	private Date fecha;
	
	@OneToMany(mappedBy="ruta")
    @OrderBy("id ASC")
	private List<Visita> visitas;
	
	@OneToMany
	private User creador;
	
	@Id
	@GeneratedValue
	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}
	
	public int getImporteTotal() {
		return importeTotal;
	}
	
	public void setImporteTotal(int importeTotal) {
		this.importeTotal = importeTotal;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

}