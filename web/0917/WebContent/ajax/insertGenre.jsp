<%@page import="dao.GenresDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	
	int result = GenresDAO.insert(name);
	
%>
{"result" : <%=result==1 %>}