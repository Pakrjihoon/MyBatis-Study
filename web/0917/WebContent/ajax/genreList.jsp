<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@page import="vo.Genre"%>
<%@page import="java.util.List"%>
<%@page import="dao.GenresDAO"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 장르목록을 리스트로
	List<Genre> list= GenresDAO.selectList();

	// ObjectMapper
	ObjectMapper om = new ObjectMapper();
	
	//리스트를 json으로
	String json = om.writeValueAsString(list);
	
%>
<%=json%>