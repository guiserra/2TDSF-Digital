package br.com.fiap.jpa.dao;

import java.util.List;

import br.com.fiap.jpa.exception.IdNotFoundException;

public interface GenericDAO <T,K> {

	void cadastrar(T entidade);
	void atualizar(T entidade);
	void remover(K chave) throws IdNotFoundException;
	T buscar(K chave);
	List<T> listar();
	
}