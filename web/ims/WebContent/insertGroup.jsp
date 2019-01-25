<%@page import="com.bjd.ims.dao.GroupsDAO"%>
<%@page import="com.bjd.ims.vo.Group"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	/*
		GET방식은 한글 깨지지 않음
		POST방식은 한글 깨짐
		
	*/
	request.setCharacterEncoding("UTF-8");
	
	String name = request.getParameter("name");
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String date = request.getParameter("date");
	
	//Date 형
	Date debutDate = Date.valueOf(year + "-" + month + "-" + date);
	Group group = new Group();
	group.setName(name);
	group.setDebutDate(debutDate);
	
	GroupsDAO.insert(group);
	// 넌 뷰 페이지에서 뷰페이지로 이동
	response.sendRedirect("groupList.jsp");
	
	
%>
<%=name%>
<%=year%>
<%=month%>
<%=date%>