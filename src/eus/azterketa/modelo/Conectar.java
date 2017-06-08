package eus.azterketa.modelo;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conectar {
	public Connection cn;

	public Conectar() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/giroitalia";
			cn = (Connection) DriverManager.getConnection(url, "root", "");
		} catch (Exception e) {
			e.printStackTrace();

		}
	}
}
