<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	//Date 객체를 사용하지 않고 Calendar 객체를 사용한다.
	Calendar now = Calendar.getInstance();
	int year = now.get(Calendar.YEAR);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그룹 입력</title>
</head>
<body>
	<h1>그룹 입력폼</h1>
	<form action="insertGroup.jsp" method="post">
		<fieldset>
			<legend>그룹 입력폼</legend>
			<p>
				<label for="name">그룹명</label>
				<input id="name" name="name" placeholder="그룹명 입력"> 
			</p>
			<p>
				<select name="year">
				<% for(int i = year; i > year - 105; i--) { %>
					<option><%=i %></option>
				<% } %>
				</select>년
				<select name="month">
				<%for (int i =1; i<13; i++) { %>
					<option><%=i %></option>
				<%} %>
				</select>월
				<select name="date">
				<%for (int i=1; i<32; i++) { %> 
					<option><%=i %></option>
				<%} %>
				</select>일
			</p>
			<button>그룹 입력</button>
		</fieldset>
	</form>	
</body>
</html>