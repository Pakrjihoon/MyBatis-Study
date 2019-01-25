<%@page import="com.hermes.hanbakwi.dao.UsersDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String id = request.getParameter("id");
	
	int cnt = UsersDAO.selectCheckId(id);
%>
{"count":<%=cnt%>}