package eus.azterketa.modelo;


import java.sql.PreparedStatement;
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
				corredor.setApellido(rs.getString("apellido"));
				corredor.setNombre_grupo(rs.getString("equipo"));
				
				corredores.add(corredor);
			}	
			
			return corredores;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		return corredores;
		
	}
	
	public void eliminar (String nombre,String apellido){
		
		try {
			
			PreparedStatement pst = this.cn.prepareStatement("DELETE FROM corredor WHERE nombre=? AND apellido=?");
			pst.setString(1, nombre);
			pst.setString(2, apellido);
			
			pst.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public boolean comprobar (String nombre,String apellido){
		
		try {
			
			PreparedStatement pst = this.cn.prepareStatement("SELECT * FROM corredor WHERE nombre=? AND apellido=?");
			pst.setString(1, nombre);
			pst.setString(2, apellido);
			
			ResultSet rs = pst.executeQuery();
			if(rs.next() == true){
				return true;
			}else{
				return false;
			}		
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;		
	}
	
	
}
