<%@page import="org.bjd.model1.dao.MembersDAO"%>
<%@page import="org.bjd.model1.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

// 파라미터 : id , password

String id = request.getParameter("id");
String password = request.getParameter("password");

//유저가 입력한 id와 password만을 가지고 있는 객체
//(DTO) -> 데이터를 운반만 하는 객체
Member member = new Member(id, password);

//데이터베이스에서 검색하여 넘어온 멤버 객체
Member loginMember = MembersDAO.selectLogin(member);
session.setAttribute("loginMember", loginMember);

//request(요청 프로토콜)의 header의 referer속성이
//바로 이전페이지
String url = request.getHeader("referer");
System.out.println(url);
response.sendRedirect(url);
%>