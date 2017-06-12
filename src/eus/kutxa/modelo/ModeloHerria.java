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
		
		try {
			Statement st = this.cn.createStatement();
			ResultSet rs = st.executeQuery("");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
		
	}

}
