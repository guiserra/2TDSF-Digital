package br.com.fiap.spring.model;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@SequenceGenerator(name = "partida", allocationSize = 1)
public class Partida {

	@Id
	@GeneratedValue(generator = "partida", strategy = GenerationType.SEQUENCE)
	private int codigo;

	@DateTimeFormat(pattern="dd/MM/yyyy")
	private Calendar data;

	private String timeA;

	private String timeB;

	private int golsTimeA;

	private int golsTimeB;

	private boolean realizado;

	public Partida() {
		super();
	}

	public Partida(int codigo, Calendar data, String timeA, String timeB, int golsTimeA, int golsTimeB,
			boolean realizado) {
		super();
		this.codigo = codigo;
		this.data = data;
		this.timeA = timeA;
		this.timeB = timeB;
		this.golsTimeA = golsTimeA;
		this.golsTimeB = golsTimeB;
		this.realizado = realizado;
	}

	public Partida(Calendar data, String timeA, String timeB, int golsTimeA, int golsTimeB, boolean realizado) {
		super();
		this.data = data;
		this.timeA = timeA;
		this.timeB = timeB;
		this.golsTimeA = golsTimeA;
		this.golsTimeB = golsTimeB;
		this.realizado = realizado;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public Calendar getData() {
		return data;
	}

	public void setData(Calendar data) {
		this.data = data;
	}

	public String getTimeA() {
		return timeA;
	}

	public void setTimeA(String timeA) {
		this.timeA = timeA;
	}

	public String getTimeB() {
		return timeB;
	}

	public void setTimeB(String timeB) {
		this.timeB = timeB;
	}

	public int getGolsTimeA() {
		return golsTimeA;
	}

	public void setGolsTimeA(int golsTimeA) {
		this.golsTimeA = golsTimeA;
	}

	public int getGolsTimeB() {
		return golsTimeB;
	}

	public void setGolsTimeB(int golsTimeB) {
		this.golsTimeB = golsTimeB;
	}

	public boolean isRealizado() {
		return realizado;
	}

	public void setRealizado(boolean realizado) {
		this.realizado = realizado;
	}

}
