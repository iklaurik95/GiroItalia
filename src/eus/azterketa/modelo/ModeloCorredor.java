package eus.azterketa.modelo;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import eus.azterketa.modelo.Conectar;

public class ModeloCorredor extends Conectar{

	public ModeloCorredor() {
		super();
	}
	
	public ArrayList<Corredor> selectAll(){
		
		ArrayList<Corredor> corredores = new ArrayList<Corredor>();
			
		try {
			
			Statement st = this.cn.createStatement();
			ResultSet rs= st.executeQuery("SELECT * FROM corredor");
			
			while(rs.next()){
				Corredor corredor = new Corredor();
				corredor.setId(rs.getInt("id"));
				corredor.setNombre(rs.getString("nombre"));
				
				corredores.add(corredor);
			}			
			return corredores;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		return corredores;
		
	}
	
	
}
