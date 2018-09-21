package br.com.fiap.jpa.dao.impl;

import org.springframework.stereotype.Repository;

import br.com.fiap.jpa.dao.PartidaDAO;
import br.com.fiap.spring.model.Partida;

@Repository
public class PartidaDAOImpl extends GenericDAOImpl<Partida, Integer> implements PartidaDAO{

}
