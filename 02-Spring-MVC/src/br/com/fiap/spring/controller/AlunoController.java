package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.spring.model.Aluno;

@Controller
@RequestMapping("aluno")
public class AlunoController {

	@GetMapping("cadastrar")
	public String abrirForm() {
		return "aluno/index";
	}
	
	@PostMapping("cadastrar")
	public ModelAndView processarForm(Aluno aluno) {
		return new ModelAndView("aluno/index")
			.addObject("a", aluno)
			.addObject("msg", "Aluno Cadastrado!");
	}
	
	
}








