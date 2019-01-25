<%@page import="org.bjd.mms.dao.GenresDAO"%>
<%@page import="org.bjd.mms.vo.Genre"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<Genre> list = GenresDAO.selectList();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장르 목록</title>
</head>
<body>
	<h1>장르 목록</h1>
	<ul>
	<% for(Genre genre : list) { %>
		<li><%=genre.getNo() %>) <%=genre.getName() %></li>
	<% } %>	
	</ul>
</body>
</html>



