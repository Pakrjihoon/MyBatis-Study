<%@page import="java.sql.Date"%>
<%@page import="org.bjd.mms.dao.MoviesDAO"%>
<%@page import="org.bjd.mms.vo.Movie"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<Movie> list = MoviesDAO.selectList();

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 목록</title>
</head>
<body>
	<h1>영화목록</h1>
	<ul>
	<% for(Movie movie : list) {
		
		String endDateStr = "아직 종료안됨";
		
		Date endDate = movie.getEndDate();
		if(endDate!=null) {
			endDateStr = endDate.toString();
		}//if end
		%>
		<li> <%=movie.getNo() %>번
		<%=movie.getName() %> / 감독 :
		<%=movie.getDirector() %>
		
		 / 관객수 : 
		 <%=movie.getAudienceNum() %>
		 / 종료일 : 
		 <%=endDateStr %>
		 </li>
	<%} %>
	</ul>
</body>
</html>