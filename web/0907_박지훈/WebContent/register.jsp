<%@page import="com.bjd.phonebook.vo.Phone"%>
<%@page import="com.bjd.phonebook.dao.PhoneBookDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String first = request.getParameter("first");
	String middle = request.getParameter("middle");
	String last = request.getParameter("last");
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String date = request.getParameter("date");

	// String 형으로 휴대폰 번호 받기
	String phoneN = String.valueOf(first + middle + last);
	
	//Date 형
	Date birthDate = Date.valueOf(year + "-" + month + "-" + date);
	
	SimpleDateFormat day = new SimpleDateFormat("YYYY-MM-dd");
	
	Phone phone = new Phone();
	phone.setName(name);
	phone.setBirthDate(birthDate);
	phone.setPhone(phoneN);
	phone.setGender(gender);
	
	
	PhoneBookDAO.insert(phone);
	// 넌 뷰 페이지에서 뷰페이지로 이동
	response.sendRedirect("index.jsp");
%>

<%= name%>
<%= phoneN %>
<%= birthDate %>
<%= gender%>
