package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import jakarta.servlet.ServletContext;

public class JDBConnect {
	public Connection con;
	public Statement stmt;
	public PreparedStatement psmt;
	public ResultSet rs;

//	HOW1--- 생성자()
	/*
	 * public JDBConnect() { try { // JDBC 드라이버 로드
	 * Class.forName("oracle.jdbc.OracleDriver");
	 * 
	 * String url = "jdbc:oracle:thin:@localhost:1521:orcl21v"; String id = "skc";
	 * String pwd = "1234"; con = DriverManager.getConnection(url, id, pwd);
	 * System.out.println("DB 연결 성공(기본생성자)");
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } }
	 */

//	HOW2--- 생성자( driver, url, id, pwd)
	/*
	 * public JDBConnect(String driver, String url, String id, String pwd) {
	 * 
	 * try { Class.forName(driver); con = DriverManager.getConnection(url, id, pwd);
	 * System.out.println("DB 연결 성공(web.xml의 인수생성자1)"); } catch (Exception e) {
	 * e.printStackTrace(); }
	 * 
	 * }
	 */

//	HOW3--- JDBConnect(ServletContext application) 생성자
	public JDBConnect(ServletContext application) {
		try {
			// JDBC 드라이버 로드
			String driver = application.getInitParameter("OracleDriver");
			Class.forName(driver);

			// DB에 연결
			String url = application.getInitParameter("OracleURL");
			String id = application.getInitParameter("OracleId");
			String pwd = application.getInitParameter("OraclePwd");
			con = DriverManager.getConnection(url, id, pwd);

			System.out.println("DB 연결 성공(ServletContext인수 생성자 2)");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 사용한 자원을 반납(DB close)
	public void close() {
		try {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (psmt != null)
				psmt.close();
			if (con != null)
				con.close();
			System.out.println("JDBC 자원 해제");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
