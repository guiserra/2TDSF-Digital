package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.spring.model.Carro;

@Controller
@RequestMapping("carro")
public class CarroController {

	@GetMapping("cadastrar")
	public String abrirForm() {
		return "carro/form";
	}
	
	@PostMapping("cadastrar")
	public ModelAndView processarForm(Carro c) {
		System.out.println(c.getPlaca());
		System.out.println(c.getAno());
		System.out.println(c.getCor());
		System.out.println(c.isNovo());
		ModelAndView retorno = new ModelAndView("carro/form");
		retorno.addObject("carro", c);
		return retorno;
	}
	
}




