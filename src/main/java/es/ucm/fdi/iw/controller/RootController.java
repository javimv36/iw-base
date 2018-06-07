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
import es.ucm.fdi.iw.model.Ruta;
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
		User u = entityManager.find(User.class, 
				((User)session.getAttribute("user")).getId());
		List<Ruta> rutas = u.getRutas();
		if(!rutas.isEmpty()) {
			Ruta ruta = rutas.get(rutas.size()-1);
			model.addAttribute("ruta", ruta);
		}
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
		User u = entityManager.find(User.class, 
				((User)session.getAttribute("user")).getId());
		
		List<Evento> eventos = u.getEventos();
		m.addAttribute("eventos", eventos);
		log.info("Cargados " + eventos.size() + " eventos para " + u.getLogin() + " ...");
		
		return "mis_eventos";
	}
	
	@GetMapping({"/mis_rutas", "/misrutas", "/mis-rutas", "/misRutas"})
	public String misRutas(Model m,  HttpSession session) {
		User u = entityManager.find(User.class, 
				((User)session.getAttribute("user")).getId());
		
		List<Ruta> rutas = u.getRutas();
		m.addAttribute("rutas", rutas);
		log.info("Cargados " + rutas.size() + " rutas para " + u.getLogin() + " ...");
		
		return "mis_rutas";
	}
	
	@GetMapping({"/asistencia"})
	public String asistencia(Model m,  HttpSession session) {
		User u = entityManager.find(User.class, 
				((User)session.getAttribute("user")).getId());
		
		List<Evento> eventos = u.getAsisteEventos();
		m.addAttribute("eventos", eventos);
		log.info("Cargados " + eventos.size() + " eventos para " + u.getLogin() + " ...");
		
		return "asistencia";
	}
	
	
	@GetMapping({"/eventos"})
	public String eventos(Model m,  HttpSession session) {
		List<Evento> eventos = null;
		try {
			eventos=(List<Evento>)entityManager.createNamedQuery("todosEventos").getResultList();
		}catch (NoResultException ex) {
			return "403";
		}
		m.addAttribute("eventos", eventos);
		
		log.info("Cargados " + eventos.size() + " eventos ...");
		
		return "eventos";
	}
	
	@GetMapping("/403")
	public String errorPage() {
		return "403";
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
		User u = entityManager.find(User.class, 
				((User)session.getAttribute("user")).getId());
		
		List<Evento> eventos = u.getEventos();
		m.addAttribute("eventos", eventos);
		log.info("Cargados " + eventos.size() + " eventos para " + u.getLogin() + " ...");
		
		eventos.addAll(u.getAsisteEventos());
		m.addAttribute("eventos", eventos);
		
		List<Visita> visitas = u.getVisitas();
		m.addAttribute("visitas", visitas);
		log.info("Cargadas " + visitas.size() + " visitas para " + u.getLogin() + " ...");
				
		
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
	
	@RequestMapping(path="/ruta/{r}", method = RequestMethod.GET)
	public String ruta(@PathVariable @NumberFormat long r, Model m) {
		Ruta rut = null;
		try {
			rut=(Ruta)entityManager.createNamedQuery("buscaRuta").setParameter("rut", r).getSingleResult();
		}catch (NoResultException ex) {
			return "403";
		}
		m.addAttribute("ruta", rut);
		return "ruta";
	}
	
	@RequestMapping(value = "/asistirEvento", method = RequestMethod.POST)
	@Transactional
	public String asistirEvento(
			@RequestParam long evento,
			HttpSession session
			)
	{	
		User u = entityManager.find(User.class, 
				((User)session.getAttribute("user")).getId());
		
		
		List<Evento> l =u.getAsisteEventos();
		l.add((Evento)entityManager.
							createNamedQuery("buscaEvento").
							setParameter("eve", evento).
							getSingleResult());
		u.setAsisteEventos(l);
		entityManager.persist(u);
		entityManager.flush();
			
		return "home";
	}
	@RequestMapping(value = "/addVisita", method = RequestMethod.POST)
	@Transactional
	public String addVisita(
			@RequestParam String direccion,
			@RequestParam (required=false) String fecha,
			@RequestParam (required=false) String tipo,
			@RequestParam (required=false) String nombre,
			@RequestParam (required=false) String tel,
			@RequestParam (required=false) int importeEstimado,
			@RequestParam (required=false) String detalles,
			@RequestParam (required=false) String horaIni,
			@RequestParam (required=false) String horaFin,
			HttpSession session
			)
	{	
		//creo el objeto visita y le damos valores
		Visita v = new Visita();
		v.setDireccion(direccion);
		v.setFecha(!"".equals(fecha) ? fecha : "");
		v.setTipo(!"".equals(tipo) ? tipo : "");
		v.setNombre(!"".equals(nombre) ? nombre : ""); //Asegurando que los campos vacios no afecten
		v.setTelefono(!"".equals(tel) ? tel : "");
		v.setImporteEstimado(importeEstimado);
		v.setDetalles(!"".equals(detalles) ? detalles : "");
		v.setCreador(((User)session.getAttribute("user")));
		v.setHoraIni(!"".equals(horaIni) ? horaIni : "");
		v.setHoraFin(!"".equals(horaFin) ? horaFin : "");
		//v.setCreador(((User)session.getAttribute("user")));
		//inserto el objeto en la base de datos
		entityManager.persist(v);
		entityManager.flush();
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
		entityManager.flush();
		return "home";
	}
	
	@RequestMapping(value = "/addRuta", method = RequestMethod.POST)
	@Transactional
	public String addRuta(
			@RequestParam String fecha,
			@RequestParam (defaultValue = "0",required=false) @NumberFormat long[] eventos,
			@RequestParam (defaultValue = "0",required=false) @NumberFormat long[] visitas,
			HttpSession session,
			Model m
			) {
		Ruta r = new Ruta();
		r.setFecha(fecha);
		r.setCreador(((User)session.getAttribute("user")));
		entityManager.persist(r);
		
		log.info("Añadiendo " + eventos.length + " eventos a la ruta " + r.getId() + " ... eventos : "+ eventos[0] + " ...");
		if (eventos[0]!=0) {
			Evento eve = null;
			for(int i=0;i<eventos.length; i++) {
				try {
					log.info("Añadiendo evento [" + eventos[i]+ "] a la ruta " + r.getId() + " ...");
					eve=(Evento)entityManager.
							createNamedQuery("buscaEvento").
							setParameter("eve", eventos[i]).
							getSingleResult();
					eve.setRuta(r);
					entityManager.persist(eve);
				}catch (NoResultException ex) {
					return "403";
				}catch (NullPointerException ex) {
					return "403";
				}
			}
		}
		if(visitas[0]!=0) {
			Visita vis = null;
			for(int i=0;i<visitas.length; i++) {
				try {
					log.info("Añadiendo visita [" + eventos[i]+ "] a la ruta " + r.getId() + " ...");
					vis =((Visita)entityManager.
							createNamedQuery("buscaVisita").
							setParameter("vis", visitas[i]).
							getSingleResult());
					vis.setRuta(r);
					entityManager.persist(vis);
				}catch (NoResultException ex) {
					return "403";
				}catch (NullPointerException ex) {
					return "403";
				}
			}
		}
		m.addAttribute("ruta", r);
		entityManager.persist(r);
		entityManager.flush();
		return "home";
	}
}
