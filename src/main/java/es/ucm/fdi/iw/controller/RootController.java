package es.ucm.fdi.iw.controller;

import java.security.Principal;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.NumberFormat;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import es.ucm.fdi.iw.model.Evento;
import es.ucm.fdi.iw.model.User;
import es.ucm.fdi.iw.model.Visita;

@Controller	
public class RootController {

	@Autowired
	private EntityManager entityManager;
	
	private static Logger log = Logger.getLogger(RootController.class);
	
	private void addUserToSession(HttpSession session, Principal principal) {
		session.setAttribute("user", entityManager.createQuery(
				"from User where login = :login", User.class)
	                            .setParameter("login", principal.getName())
	                            .getSingleResult());
	}
	
    @ModelAttribute
    public void addAttributes(Model model) {
        model.addAttribute("s", "/static");
    }

	@GetMapping({"/", "/index"})
	public String root(Model model, Principal principal, HttpSession session) {
		log.info(principal.getName() + " de tipo " + principal.getClass());		
		addUserToSession(session, principal);
		return "home";
	}
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@GetMapping("/logout")
	public String logout() {
		return "logout";
	}
	
	@GetMapping("/upload")
	public String upload() {
		return "upload";
	}
	
	@GetMapping("/hola")
	public String hola() {
		return "hola";
	}
	
	@GetMapping({"/mis_visitas", "/misvisitas", "/mis-visitas", "/misVisitas"})
	public String misVisitas(Model m,  HttpSession session) {
		User u = entityManager.find(User.class, 
				((User)session.getAttribute("user")).getId());
		
		List<Visita> visitas = u.getVisitas();
		m.addAttribute("visitas", visitas);
		log.info("Cargadas " + visitas.size() + " visitas para " + u.getLogin() + " ...");
		
		return "mis_visitas";
	}
	
	@GetMapping({"/mis_eventos", "/miseventos", "/mis-eventos", "/misEventos"})
	public String misEventos(Model m,  HttpSession session) {
		return "mis_eventos";
	}
	
	@GetMapping("/administrar")
	public String administrar() {
		return "administrar";
	}
	
	@GetMapping("/crear_visita")
	public String crearVisita() {
		return "crear_visita";
	}
	
	@GetMapping("/crear_evento")
	public String crearEvento() {
		return "crear_evento";
	}
	
	@GetMapping("/crear_ruta")
	public String crearRuta(Model m,  HttpSession session) {
		return "crear_ruta";
	}
	
	@RequestMapping(path="/visita/{v}", method = RequestMethod.GET)
	public String visita(@PathVariable @NumberFormat long v, Model m) {
		Visita vis = null;
		try {
			vis=(Visita)entityManager.createNamedQuery("buscaVisita").setParameter("vis", v).getSingleResult();
		}catch (NoResultException ex) {
			return "403";
		}
		m.addAttribute("visita", vis);
		return "visita";
	}
	
	@RequestMapping(path="/evento/{e}", method = RequestMethod.GET)
	public String evento(@PathVariable @NumberFormat long e, Model m) {
		Evento eve = null;
		try {
			eve=(Evento)entityManager.createNamedQuery("buscaEvento").setParameter("eve", e).getSingleResult();
		}catch (NoResultException ex) {
			return "403";
		}
		m.addAttribute("evento", eve);
		return "evento";
	}
	
	@RequestMapping(value = "/addVisita", method = RequestMethod.POST)
	@Transactional
	public String addVisita(
			@RequestParam String direccion,
			@RequestParam String fecha,
			@RequestParam String tipo,
			@RequestParam (required=false) String nombre,
			@RequestParam (required=false) String tel,
			@RequestParam (required=false) int importeEstimado,
			@RequestParam (required=false) String detalles,
			HttpSession session
			)
	{	
		//creo el objeto visita y le damos valores
		Visita v = new Visita();
		v.setDireccion(direccion);
		v.setFecha(fecha);
		v.setTipo(tipo);
		v.setNombre(!"".equals(nombre) ? nombre : ""); //Asegurando que los campos vacios no afecten
		v.setTelefono(!"".equals(tel) ? tel : "");
		v.setImporteEstimado(importeEstimado);
		v.setDetalles(!"".equals(detalles) ? detalles : "");
		//v.setCreador(((User)session.getAttribute("user")));
		//inserto el objeto en la base de datos
		entityManager.persist(v);
		//redirecciona a index
		return "home";
	}
	
	@RequestMapping(value = "/addEvento", method = RequestMethod.POST)
	@Transactional
	public String addEvento(
			@RequestParam String direccion,
			@RequestParam String fecha,
			@RequestParam String horaIni,
			@RequestParam String horaFin,
			@RequestParam String info,
			@RequestParam int precio,
			HttpSession session
			)
	{
		Evento e = new Evento();
		e.setDireccion(direccion);
		e.setFecha(fecha);
		e.setHoraIni(horaIni);
		e.setHoraFin(horaFin);
		e.setInfo(info);	
		e.setCreador(((User)session.getAttribute("user")));
		entityManager.persist(e);
		return "home";
	}
	
}
