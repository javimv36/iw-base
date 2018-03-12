package es.ucm.fdi.iw.model;

import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;

@Entity
public class User {
	private long id;
	private String login;
	private String password;
	private String roles; // split by , to separate roles
	private byte enabled;
	
	//@ManyToOne(mappedBy="creador")
    @OrderBy("id ASC")
	private List<Ruta> rutas;
	
	@OneToMany(mappedBy="visitas")
    @OrderBy("id ASC")
	private List<Visita> visitas;
	
	@OneToMany(mappedBy="eventos")
    @OrderBy("id ASC")
	private List<Evento> eventos;
	
	
	@Id
	@GeneratedValue
	public long getId() {
	return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}	

	@Column(unique=true)
	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}

	public String getRoles() {
		return roles;
	}

	public void setRoles(String roles) {
		this.roles = roles;
	}

	public byte getEnabled() {
		return enabled;
	}

	public void setEnabled(byte enabled) {
		this.enabled = enabled;
	}
/*
	public List<Visita> getVisitas() {
		return visitas;
	}

	public void setVisitas(List<Visita> visitas) {
		this.visitas = visitas;
	}

	public List<Evento> getEventos() {
		return eventos;
	}

	public void setEventos(List<Evento> eventos) {
		this.eventos = eventos;
	}

	public List<Ruta> getRutas() {
		return rutas;
	}

	public void setRutas(List<Ruta> rutas) {
		this.rutas = rutas;
	}

	public List<Evento> getEventos_asistencia() {
		return eventos_asistencia;
	}

	public void setEventos_asistencia(List<Evento> eventos_asistencia) {
		this.eventos_asistencia = eventos_asistencia;
	}*/
}
