package br.com.fiap.jpa.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;
import br.com.fiap.jpa.dao.JogadorDAO;
import br.com.fiap.jpa.model.Jogador;

@Repository
public class JogadorDAOImpl extends GenericDAOImpl<Jogador, Integer> implements JogadorDAO {

	@Override
	public List<Jogador> buscarPorNome(String nome) {
		return em.createQuery("from Jogador j where upper(j.nome) like :churros", Jogador.class)
				.setParameter("churros", "%" + nome.toUpperCase() + "%").getResultList();
	}

}