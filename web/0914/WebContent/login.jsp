<%@page import="vo.User"%>
<%@page import="dao.UsersDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	User user = new User(id,pwd);
	
	User loginUser = UsersDAO.selectLogin(user);
	
	session.setAttribute("loginUser", loginUser);
	
	
	/*
	if(id.equals("test") && pwd.equals("1234")) {
		// 원래는 DB에서 처리하지만 지금은 
		// id가 test 이고 / 비밀번호가 1234인 경우에 로그인
		
		// 로그인이 되었을경우 session객체에 attribute(속성)으로 세팅
		session.setAttribute("nickname", "BJD");
	} // if end
	*/
	// login -> SELECT !
	
	
	
	response.sendRedirect("index.jsp");
%>