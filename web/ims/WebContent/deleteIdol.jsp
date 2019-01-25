<%@page import="com.bjd.ims.dao.IdolsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String idolIdStr = request.getParameter("idolId");
	IdolsDAO.delete(Integer.parseInt(idolIdStr));
	response.sendRedirect("idolList.jsp");
%>  