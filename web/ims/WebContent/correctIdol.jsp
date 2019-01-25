<%@page import="com.bjd.ims.vo.Idol"%>
<%@page import="java.sql.Date"%>
<%@page import="com.bjd.ims.dao.IdolsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String height = request.getParameter("height");
	String weight = request.getParameter("weight");
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String date = request.getParameter("date");
	String agentName = request.getParameter("agentName");
	String gender = request.getParameter("gender");
	String groupId = request.getParameter("groupId");


	//Date 형
	Date birthDate = Date.valueOf(year + "-" + month + "-" + date);

	Idol idol = new Idol();

	idol.setName(name);
	idol.setHeight(Double.parseDouble(height));
	idol.setWeight(Double.parseDouble(weight));
	idol.setBirthDate(birthDate);
	idol.setAgentName(agentName);
	idol.setGender(gender);
	idol.setGroupId(Integer.parseInt(groupId));
	response.sendRedirect("idolList.jsp");
%>  