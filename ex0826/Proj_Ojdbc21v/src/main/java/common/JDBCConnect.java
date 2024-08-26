package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import jakarta.servlet.ServletContext;

public class JDBCConnect {

	public Connection con;
	public Statement stmt;
	public PreparedStatement psmt;
	public ResultSet rs;

//	기본생성자를 통해서 오라클21c데이터베이스 연결
	public JDBCConnect() {
		try {
			// JDBC 드라이버 로드
			Class.forName("oracle.jdbc.OracleDriver");

			String url = "jdbc:oracle:thin:@localhost:1521:orcl21v";
			String id = "skc";
			String pwd = "1234";
			con = DriverManager.getConnection(url, id, pwd);
			System.out.println("DB 연결 성공(기본생성자)");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

//	web.xml의 <context-param>에 등록된 정보로 연결
	public JDBCConnect(String driver, String url, String id, String pwd) {
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, id, pwd);
			System.out.println("DB 연결 성공(web.xml의 인수생성자1)");
		} catch (Exception e) {
			// TODO: handle exception
		}

	}
	
	public JDBCConnect(ServletContext application) {
		try {
			String driver = application.getInitParameter("OracleDriver");
			Class.forName(driver);
			String url = application.getInitParameter("OracleURL");
			String id = application.getInitParameter("OracleId");
			String pwd = application.getInitParameter("OraclePwd");
			con = DriverManager.getConnection(url, id, pwd);
			System.out.println("DB 연결 성공(web.xml의 application객체를 받아서 인수생성자2)");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

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
