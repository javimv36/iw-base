package es.ucm.fdi.iw.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

@Entity
@NamedQueries({
	@NamedQuery(
			name="buscaEvento",
			query="select e from Evento e where e.id = :eve")
	})
public class Evento {
	private long id;
	private String direccion;
	private String fecha;
	private String horaIni;
	private String horaFin;
	private String info;
	private int precio;
	private User creador;
	private Ruta ruta;
	private List<User> asistentes;
	
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

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public int getPrecio() {
		return precio;
	}

	public void setPrecio(int precio) {
		this.precio = precio;
	}	

	@ManyToOne(targetEntity=User.class)
	public User getCreador() {
		return creador;
	}

	public void setCreador(User creador) {
		this.creador = creador;
	}

	@ManyToMany(targetEntity=User.class)
	public List<User> getAsistentes() {
		return asistentes;
	}

	public void setAsistentes(List<User> asistentes) {
		this.asistentes = asistentes;
	}
	
	@ManyToOne(targetEntity=Ruta.class)
	public Ruta getRuta() {
		return ruta;
	}

	public void setRuta(Ruta ruta) {
		this.ruta = ruta;
	}
}
