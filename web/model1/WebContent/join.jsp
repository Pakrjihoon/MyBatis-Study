<%@page import="org.bjd.model1.dao.MembersDAO"%>
<%@page import="org.bjd.model1.vo.Member"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 넘어온 파라미터 
	// profile, id, nickname, pwd, year, month,date
	String profile = request.getParameter("profile");
	String id = request.getParameter("id");
	String nickname = request.getParameter("nickname");
	String password = request.getParameter("pwd");
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String date = request.getParameter("date");
	
	Date birthDate = Date.valueOf(year+"-"+month+"-"+date);
	Member member = new Member();
	// setter 호출
	
	member.setId(id);
	member.setPassword(password);
	member.setNickname(nickname);
	member.setBirthDate(birthDate);
	member.setProfile(profile);
	int result = MembersDAO.insert(member);
	if(result==1) {
		session.setAttribute("msg", "회원가입을 축하합니다.");
	}//if end
	System.out.println(result);
	response.sendRedirect("index.jsp");
%>