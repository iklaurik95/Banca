package eus.kutxa.modelo;

import java.util.ArrayList;

public class Bezero {
	public int getIdHerria() {
		return idHerria;
	}

	public void setIdHerria(int idHerria) {
		this.idHerria = idHerria;
	}

	private int id;
	private String izena;
	private String abizena;
	private int idHerria;
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

	

	public ArrayList<Kontua> getKontuak() {
		return kontuak;
	}

	public void setKontuak(ArrayList<Kontua> kontuak) {
		this.kontuak = kontuak;
	}

}
