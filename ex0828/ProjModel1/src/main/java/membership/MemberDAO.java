package membership;

import common.JDBConnect;

public class MemberDAO extends JDBConnect {
//	데이터베이스 연결Connect
	public MemberDAO(String drv, String url, String id, String pw) {
		super(drv, url, id, pw);
	}

//	쿼리를 실행한 결과정보를, DTO에 저장하는 함수.
	public MemberDTO getMemberDTO(String uid, String upass) {
		MemberDTO dto = new MemberDTO();
		String query = "SELECT * FROM member WHERE id=? AND pass=?";
		try {

//			"SELECT * FROM member WHERE id=? AND pass=?"
			psmt = con.prepareStatement(query);
//			"SELECT * FROM member WHERE id='skc' AND pass=?"
			psmt.setString(1, uid);
//			SELECT * FROM member WHERE id='skc' AND pass='1234'
			psmt.setString(2, upass);
//			*** 완성된 SQL쿼리문을 실행하여, 결과값을 ResultSet에 담는다 ***
			rs = psmt.executeQuery();

			if (rs.next()) {
				// dto에 id, pass, name, regidate를 저장.
				dto.setId(rs.getString("id"));
				dto.setPass(rs.getString("pass"));
				dto.setName(rs.getString("name"));
				dto.setRegidate(rs.getString("regidate"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dto;

	}
}
