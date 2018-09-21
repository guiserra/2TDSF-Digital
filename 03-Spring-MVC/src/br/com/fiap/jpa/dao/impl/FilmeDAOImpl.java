package br.com.fiap.jpa.dao.impl;

import org.springframework.stereotype.Repository;

import br.com.fiap.jpa.dao.FilmeDAO;
import br.com.fiap.spring.model.Filme;

@Repository
public class FilmeDAOImpl extends GenericDAOImpl<Filme, Integer>
												implements FilmeDAO{

}