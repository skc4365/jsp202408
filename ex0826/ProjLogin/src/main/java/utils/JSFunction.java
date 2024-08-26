package utils;

import jakarta.servlet.jsp.JspWriter;

public class JSFunction {
	
//	java에서 out내장객체 사용을 위해서 JspWriter out 전달받음.
	public static void alertLocation(String msg, String url, JspWriter out) {
		try {
			// js코드를 java의 문자열로 정의하고 있다.
			String script=""
					+ "<script>"
					+ "     alert('" + msg + "');"
					+ "     location.href = '" + url + "';"
					+ "</script>";
			out.println(script);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public static void alertBack(String msg, JspWriter out) {
		try {
			String script=""
					+ "<script>"
					+ "     alert('" + msg + "');"
					+ "     history.back();"
					+ "</script>";
			out.println(script);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
