package br.com.fiap.jpa.dao;

import java.util.List;

import br.com.fiap.jpa.model.Jogador;

public interface JogadorDAO extends GenericDAO<Jogador, Integer>{
	
	List<Jogador> buscarPorNome(String nome);
	
}
