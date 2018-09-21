package br.com.fiap.jpa.dao.impl;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import br.com.fiap.jpa.dao.GenericDAO;
import br.com.fiap.jpa.exception.IdNotFoundException;

public abstract class GenericDAOImpl<T,K> implements GenericDAO<T, K>{

	//Spring cria um objeto do tipo EntityManager
	@PersistenceContext
	protected EntityManager em;
	
	private Class<T> clazz;
	
	@SuppressWarnings("unchecked")
	public GenericDAOImpl() {
		super();
		clazz = (Class<T>)
				((ParameterizedType) 
					getClass().getGenericSuperclass())
								.getActualTypeArguments()[0];
	}
	
	@Override
	public void cadastrar(T entidade) {
		em.persist(entidade);
	}

	@Override
	public void atualizar(T entidade) {
		em.merge(entidade);
	}

	@Override
	public void remover(K chave) throws IdNotFoundException {
		T entidade = buscar(chave);
		if (entidade == null)
			throw new IdNotFoundException("Entidade não encontrada");
		em.remove(entidade);
	}

	@Override
	public T buscar(K chave) {
		return em.find(clazz, chave);
	}
	
	@Override
	public List<T> listar(){
		return em.createQuery("from " + clazz.getName(),clazz)
				.getResultList();
	}

}








