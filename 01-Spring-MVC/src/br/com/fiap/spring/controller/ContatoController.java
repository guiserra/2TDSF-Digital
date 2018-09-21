package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("contato")
public class ContatoController {

	//M�todo que abre a p�gina com o formul�rio
	@GetMapping("enviar")
	public String abrirContato() {
		return "contato/form";
	}
	
	//M�todo que recupera as informa��es do formul�rio
	@PostMapping("enviar")
	public ModelAndView processsarContato(String nome, 
								String telefone, String email) {
		//Exibe os valores no console
		System.out.println(nome + " " + telefone + " " + email);
		//Instanciar o objeto de retorno
		ModelAndView retorno = 
				new ModelAndView("contato/form"); //Pasta + p�gina
		//Enviar informa��es para a p�gina JSP
		retorno.addObject("msg", "Contato enviado!");//chave, valor
		retorno.addObject("nome", nome);
		return retorno; 
	}
	
}





