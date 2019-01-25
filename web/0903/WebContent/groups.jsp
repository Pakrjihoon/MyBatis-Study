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
	String sql = "SELECT group_id, name, debut_date FROM groups order by 1";
	
	// 5) ResultSet 얻기
	ResultSet rs = stmt.executeQuery(sql);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이돌 그룹 목록</title>
</head>
<body>
	<h1>아이돌 그룹 목록</h1>
	<table border=1>
		<caption>아이돌 그룹</caption>
		<thead>
			<tr>
				<td>번 호</td>
				<td>이 름</td>
				<td>데뷔일</td>
			</tr>
		</thead>
		<tbody>
		<% while(rs.next()) {%>
			<tr>
				<th><%=rs.getInt(1) %></th>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getDate(3) %>
				<td><a href="deleteGroups.jsp?group_id=<%=rs.getInt(1)%>">삭제</a></td>
			</tr>
		<% } %>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="4">
				<a href=""><button>그룹 등록</button></a>
				<a href="index.html"><button>돌아가기</button></a>
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