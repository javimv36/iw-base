package es.ucm.fdi.iw.model;

import java.sql.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
@Entity

public class Ruta {
	private long id;
	private int importeTotal;
	private Date fecha;
	private List<Visita> visitas;
	private List<Evento> eventos;
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

	@ManyToOne(targetEntity=User.class)
	public User getCreador() {
		return creador;
	}

	public void setCreador(User creador) {
		this.creador = creador;
	}

	@OneToMany(targetEntity=Visita.class)
	@JoinColumn(name="ruta_id")
	public List<Visita> getVisitas() {
		return visitas;
	}

	public void setVisitas(List<Visita> visitas) {
		this.visitas = visitas;
	}
	
	@OneToMany(targetEntity=Evento.class)
	@JoinColumn(name="ruta_id")
	public List<Evento> getEventos() {
		return eventos;
	}

	public void setEventos(List<Evento> eventos) {
		this.eventos = eventos;
	}
}