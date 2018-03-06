package es.ucm.fdi.iw.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.sql.Date;
@Entity
public class Ruta {
	private long id;
	private List<Visita> visitas;
	private int importeTotal;
	private Date fecha;
	
	@Id
	@GeneratedValue
	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}
	
	public List<Visita> getVisitas() {
		return visitas;
	}
	
	public void setVisitas(List<Visita> visitas) {
		this.visitas = visitas;
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