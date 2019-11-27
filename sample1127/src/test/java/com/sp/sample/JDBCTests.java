package com.sp.sample;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTests {
	private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	private static final String URI = "jdbc:mysql://127.0.0.1/mama?serverTimezone=UTC&useSSL=false";
	private static final String USER = "mama";
	private static final String PASSWORD = "0315";
	static {
		try {
			Class.forName(DRIVER);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void testConnection() {
		try (Connection con = DriverManager.getConnection(URI,USER,PASSWORD)){
			log.info(con);
		} catch (Exception e) {
			e.getMessage();
		}
	}
}


