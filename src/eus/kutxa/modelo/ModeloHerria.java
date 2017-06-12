package eus.kutxa.modelo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ModeloHerria extends Conectar {
	
	public ModeloHerria(){
		super();
	}
	
	public ArrayList<Herria> select(){
		ArrayList<Herria> herriak = new ArrayList<Herria>();
		try {
			Statement st = this.cn.createStatement();
			ResultSet rs = st.executeQuery("SELECT * FROM herria");
			while (rs.next()){
				Herria herria = new Herria();
				herria.setId(rs.getInt("id"));
				herria.setIzena(rs.getString("izena"));
				
				herriak.add(herria);
			}
			
			return herriak;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return herriak;
		
	}

}
