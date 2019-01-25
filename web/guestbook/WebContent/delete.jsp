<%@page import="org.pjh.guestbook.dao.GuestbookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String guestbookNo = request.getParameter("no");
GuestbookDAO.delete(Integer.parseInt(guestbookNo));
response.sendRedirect("index.jsp");
%>