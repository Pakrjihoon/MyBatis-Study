<%@page import="org.bjd.model1.dao.BoardDAO"%>
<%@page import="org.bjd.model1.vo.Article"%>
<%@page import="org.bjd.model1.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//과연 멤버번호는 어떻게 얻을 것인가 ?
Member loginMember = (Member)session.getAttribute("loginMember");

int memberNo = loginMember.getNo();
String title = request.getParameter("title");
String contents = request.getParameter("contents");
Article article = new Article(title,contents,memberNo);

int result = BoardDAO.insert(article);

//System.out.println(result);
response.sendRedirect("article.jsp?no="+article.getNo());
%>