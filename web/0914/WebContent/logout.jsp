<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	/*
		session.invalidate() : 세션을 무효화
		session.removeAttribute() : 세션중 해당 속성만 제거
	*/
	session.invalidate();
 	//session.removeAttribute("nickname");
 	
	response.sendRedirect("index.jsp");
%>