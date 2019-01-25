<%@page import="java.sql.Date"%>
<%@page import="com.bjd.ims.vo.Group"%>
<%@page import="com.bjd.ims.dao.GroupsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 1) post 방식 한글 처리
	request.setCharacterEncoding("UTF-8");
	
	// 2) 파라미터 받기
	String groupId = request.getParameter("groupId");
	String name = request.getParameter("name");
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String date = request.getParameter("date");
	
	Group group = new Group();
	Date debutDate = Date.valueOf(year + "-" + month + "-" + date);
	group.setGroupId(Integer.parseInt(groupId));
	group.setDebutDate(debutDate);
	group.setName(name);
	GroupsDAO.update(group);
	// none-view 
	response.sendRedirect("groupList.jsp");
%>