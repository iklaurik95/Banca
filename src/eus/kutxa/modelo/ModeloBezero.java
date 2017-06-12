package eus.kutxa.modelo;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ModeloBezero extends Conectar{
	
	

	public ModeloBezero(){
		super();
	}
	
	public void insertar (Bezero bezero){
		
		Herria herria = new Herria();
				
		try {
			
			PreparedStatement pst = cn.prepareStatement("INSERT INTO bezero(id,izena,abizena,herria) VALUES (?,?,?,?)");
			
			pst.setInt(1, bezero.getId() );
			pst.setString(2, bezero.getIzena());
			pst.setString(3, bezero.getAbizena());
			//pst.setInt(4, bezero.setHerria(herria));
						
			pst.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<Bezero> selectAll(){
		
		ArrayList<Bezero> bezeroak = new ArrayList<Bezero>();
		
		try {
			Statement st = this.cn.createStatement();
			ResultSet rs = st.executeQuery("SELECT * FROM bezero");
			while (rs.next()){
				Bezero bezero = new Bezero();
				bezero.setId(rs.getInt("id"));
				bezero.setIzena(rs.getString("izena"));
				bezero.setAbizena(rs.getString("abizena"));
				bezero.setHerria(rs.getString("herria"));	
				
				bezeroak.add(bezero);
			}
			
			return bezeroak;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return bezeroak;
		
	}

}
