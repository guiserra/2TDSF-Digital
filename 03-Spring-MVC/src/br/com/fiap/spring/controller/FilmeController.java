package br.com.fiap.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.jpa.dao.FilmeDAO;
import br.com.fiap.spring.model.Filme;

@Controller
@RequestMapping("filme")
public class FilmeController {

	@Autowired
	private FilmeDAO dao;
	
	@GetMapping("cadastrar")
	public String abrirForm() {
		return "filme/form";
	}
	
	@Transactional
	@PostMapping("cadastrar")
	public ModelAndView processarForm(Filme filme) {
		dao.cadastrar(filme);
		return new ModelAndView("filme/form")
				.addObject("msg", "Filme cadastrado!");
	}
	
}

