package eus.kutxa.modelo;

import java.util.ArrayList;

public class Bezero {
	private int id;
	private String izena;
	private String abizena;
	private Herria herria;
	private ArrayList<Kontua> kontuak;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getIzena() {
		return izena;
	}

	public void setIzena(String izena) {
		this.izena = izena;
	}

	public String getAbizena() {
		return abizena;
	}

	public void setAbizena(String abizena) {
		this.abizena = abizena;
	}

	public Herria getHerria() {
		return herria;
	}

	public void setHerria(Herria herria) {
		this.herria = herria;
	}

	public ArrayList<Kontua> getKontuak() {
		return kontuak;
	}

	public void setKontuak(ArrayList<Kontua> kontuak) {
		this.kontuak = kontuak;
	}

}
