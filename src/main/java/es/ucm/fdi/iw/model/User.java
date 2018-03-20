package es.ucm.fdi.iw.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;

@Entity
public class User {
	private long id;
	private String login;
	private String password;
	private String roles; // split by , to separate roles
	private byte enabled;
	private List<Ruta> rutas;
	private List<Visita> visitas;
	private List<Evento> eventos;
	private List<Evento> asisteEventos;
	
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

	@OneToMany(targetEntity=Visita.class)
	@JoinColumn(name="id_visita")
	public List<Visita> getVisitas() {
		return visitas;
	}

	public void setVisitas(List<Visita> visitas) {
		this.visitas = visitas;
	}

	@OneToMany(targetEntity=Evento.class)
	@JoinColumn(name="id_evento")
	public List<Evento> getEventos() {
		return eventos;
	}

	public void setEventos(List<Evento> eventos) {
		this.eventos = eventos;
	}


	@OneToMany(targetEntity=Ruta.class)
	@JoinColumn(name="id_ruta")
	public List<Ruta> getRutas() {
		return rutas;
	}

	public void setRutas(List<Ruta> rutas) {
		this.rutas = rutas;
	}

	@ManyToMany(targetEntity=Evento.class)
	@JoinColumn(name="id_asistente")
	public List<Evento> getAsisteEventos() {
		return asisteEventos;
	}

	public void setAsisteEventos(List<Evento> asisteEventos) {
		this.asisteEventos = asisteEventos;
	}
}
