<%@page import="com.bjd.ims.dao.GroupsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String groupIdStr = request.getParameter("groupId");
	GroupsDAO.delete(Integer.parseInt(groupIdStr));
	response.sendRedirect("groupList.jsp");
%>  