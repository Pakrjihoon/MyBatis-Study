<%@page import="com.bjd.phonebook.dao.PhoneBookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String phoneNoStr = request.getParameter("no");
    PhoneBookDAO.delete(Integer.parseInt(phoneNoStr));
	response.sendRedirect("index.jsp");
%>
