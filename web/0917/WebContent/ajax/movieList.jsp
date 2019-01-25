<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@page import="vo.Movie"%>
<%@page import="dao.MoviesDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

// 영화목록을 리스트로
List<Movie> list= MoviesDAO.selectList();

// ObjectMapper
ObjectMapper om = new ObjectMapper();

//리스트를 json으로
String json = om.writeValueAsString(list);

%>
<%=json%>