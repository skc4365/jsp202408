package utils;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CookieManager {

//	쿠키생성
	public static void makeCookie(HttpServletResponse response, String cName, String cValue, int cTime) {
		//쿠키이름
		Cookie cookie = new Cookie(cName, cValue);
		//경로
		cookie.setPath("/");
		//쿠키 유지 기간
		cookie.setMaxAge(cTime);
		// 응답객체에 쿠키를 추가
		response.addCookie(cookie);

	}
	
//	cName쿠키읽기
	public static String readCookie(HttpServletRequest request, String cName) {
		
		String cookieValue = "";
		
		// request객체를 통해 쿠키를 배열에 담는다.
		Cookie[] cookies = request.getCookies();
		// 쿠기배열에 값이 있으면(즉, == 쿠키가 하나라도 있으면)
		if(cookies != null) {
			// 모든 쿠키의 이름을 비교하여, 동일한 쿠키가 존재하는지 ?
			for(Cookie c : cookies) {
				String cookieName = c.getName();
				if(cookieName.equals(cName))
					// 동일한 쿠키의 값을 저장
					cookieValue = c.getValue();
			}
			
		}
		// 찾아낸 쿠키의 값을 리턴한다.
		return cookieValue;
	}
	
//	쿠키삭제
	public static void deleteCookie(HttpServletResponse response, String cName) {
		makeCookie(response, cName, "", 0);
	}
}





