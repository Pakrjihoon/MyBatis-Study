<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1) 클래스 로딩
	Class.forName("oracle.jdbc.OracleDriver");
	
	//2) Connection 얻기
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "test"; 
	String password = "1111";
	Connection conn = DriverManager.getConnection(url,user,password);
	
	//3) Statement 얻기
	Statement stmt = conn.createStatement();
	
	// 4) SELECT 구문
	String sql = "SELECT no, name FROM genres";
	
	// 5) ResultSet 얻기
	ResultSet rs = stmt.executeQuery(sql);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장르 목록</title>
</head>
<body>
<h1> 영화 장르 목록</h1>
<table border=1>
	<caption>영화 장르</caption>
	<thead>
		<tr>
			<th>번 호</th>
			<th>이 름</th>
			<th>삭 제</th>
		</tr>
	</thead>
	<tbody>
	<% while(rs.next()) { %>
		<tr>
			<th><%= rs.getInt(1) %></th>
			<td><%= rs.getString(2) %></td>
			<td><a href="deleteGenre.jsp?no=<%=rs.getInt(1)%>">삭제</a></td>
		</tr>
	<% } // while end %>
	</tbody>
	<tfoot>
		<tr>
			<td colspan="3">
			<a href="">장르 등록</a>
			<a href="index.html">돌아가기</a>
			</td>
		</tr>
	</tfoot>
</table>
</body>
</html>
<%
	stmt.close();
	conn.close();
%>