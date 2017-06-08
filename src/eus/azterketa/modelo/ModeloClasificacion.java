package eus.azterketa.modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class ModeloClasificacion extends Conectar{
	
	public ModeloClasificacion() {
		super();
	}
	
	public ArrayList<Clasificacion> selectAll(){
		
		ArrayList<Clasificacion> clasificaciones = new ArrayList<Clasificacion>();
				
		try {
			
			Statement st = this.cn.createStatement();
			ResultSet rs = st.executeQuery("SELECT * FROM clasificacion");
			
			while(rs.next()){
				
				Clasificacion clasificacion = new Clasificacion();
				clasificacion.setId_corredor(rs.getInt("id_corredor"));
				clasificacion.setId_etapa(rs.getInt("id_etapa"));
				clasificacion.setPosicion(rs.getInt("posicion"));
				
				clasificaciones.add(clasificacion);
				
			}
			
			return clasificaciones;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return clasificaciones;
		
	}
	
	public void insertar (Clasificacion clasificacion){
				
		try {
			
			PreparedStatement pst = cn.prepareStatement("INSERT INTO clasificacion(id_corredor,id_etapa,posicion) VALUES (?,?,?)");
			
			pst.setInt(1, clasificacion.getId_corredor());
			pst.setInt(2, clasificacion.getId_etapa());
			pst.setInt(3, clasificacion.getPosicion());
			
			pst.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
