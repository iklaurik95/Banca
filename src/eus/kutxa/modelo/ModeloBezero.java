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
		
		try {
			
			PreparedStatement pst = cn.prepareStatement("INSERT INTO bezero(id,izena,abizena,herria) VALUES (?,?,?,?)");
			
			pst.setInt(1, bezero.getId() );
			pst.setString(2, bezero.getIzena());
			pst.setString(3, bezero.getAbizena());
						
			pst.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<Bezero> selectAll(){
		
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
