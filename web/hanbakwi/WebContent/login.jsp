<%@page import="com.hermes.hanbakwi.dao.UsersDAO"%>
<%@page import="com.hermes.hanbakwi.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

// 파라미터 : id , password

String id = request.getParameter("id");
String password = request.getParameter("password");

User user = new User(id, password);

user = UsersDAO.selectLogin(user);
session.setAttribute("loginUser", user);

String url = request.getHeader("referer");
response.sendRedirect(url);
%>