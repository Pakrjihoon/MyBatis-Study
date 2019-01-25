<%@page import="com.bjd.phonebook.dao.PhoneBookDAO"%>
<%@page import="com.bjd.phonebook.vo.Phone"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	request.setCharacterEncoding("UTF-8");
        
        String no = request.getParameter("no");
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
    	Date birthDate 
    	= Date.valueOf(year + "-" + month + "-" + date);
    	
    	Phone phone = new Phone();
    	phone.setNo(Integer.parseInt(no));
    	phone.setName(name);
    	phone.setBirthDate(birthDate);
    	phone.setPhone(phoneN);
    	phone.setGender(gender);
    	
    	PhoneBookDAO.update(phone);
    	response.sendRedirect("index.jsp");
    %>