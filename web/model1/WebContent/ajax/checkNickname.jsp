<%@page import="org.bjd.model1.dao.MembersDAO"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//json view -> contentType= application/json
	String nickname = request.getParameter("nickname");
	
	//3초후에 응답
	//Thread.sleep(3000);
	
	int cnt = MembersDAO.selectCheckNickname(nickname);

%>
{"count":<%=cnt %>}