package eus.kutxa.modelo;

public class Kontua {
	private int id;
	private String iban;
	private Bezero bezero;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getIban() {
		return iban;
	}

	public void setIban(String iban) {
		this.iban = iban;
	}

	public Bezero getBezero() {
		return bezero;
	}

	public void setBezero(Bezero bezero) {
		this.bezero = bezero;
	}

}
