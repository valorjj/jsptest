package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DB {
	
	// DB 연동 시 공통으로 사용합니다 
	protected Connection con;
	protected ResultSet rs;
	protected PreparedStatement ps;
	
	public DB() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3307/jsptest?serverTimezone=UTC", "root", "1234");
			System.out.println("[mysql DB 연동성공]");

		} catch (Exception e) {
			System.out.println("[mysql DB 연동실패]" + e);
			e.printStackTrace();
		}
	}
	
	
}
