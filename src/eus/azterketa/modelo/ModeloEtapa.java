package eus.azterketa.modelo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ModeloEtapa   extends Conectar{

	public ModeloEtapa() {
		super();
	}
	
	public ArrayList<Etapa> selectAll(){
		
		ArrayList<Etapa> etapas = new ArrayList<Etapa>();
		
		try {
			
			Statement st = this.cn.createStatement();
			ResultSet rs = st.executeQuery("SELECT * FROM etapa");
			
			while(rs.next()){
				
				Etapa etapa = new Etapa();
				etapa.setId(rs.getInt("id"));
				etapa.setKm(rs.getInt("km"));
				etapa.setPueblo_salida(rs.getString("salida"));
				etapa.setPueblo_llegada(rs.getString("llegada"));
				
				etapas.add(etapa);
			}
			
			return etapas;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return etapas;
		
	}
}
