package br.com.fiap.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="T_FILME")
@SequenceGenerator(name="filme",sequenceName="SQ_T_FILME",allocationSize=1)
public class Filme {

	@Id
	@Column(name="cd_filme")
	@GeneratedValue(generator="filme",strategy=GenerationType.SEQUENCE)
	private int id;
	
	@Column(name="ds_titulo")
	private String titulo;
	
	@Column(name="ds_genero")
	private String genero;
	
	@Column(name="fl_legendado")
	private boolean legendado;
	
	@Column(name="ds_duracao")
	private int duracao;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	public boolean isLegendado() {
		return legendado;
	}

	public void setLegendado(boolean legendado) {
		this.legendado = legendado;
	}

	public int getDuracao() {
		return duracao;
	}

	public void setDuracao(int duracao) {
		this.duracao = duracao;
	}
	
}
