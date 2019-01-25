<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	Calendar now = Calendar.getInstance();
	//올해 
	int year = now.get(Calendar.YEAR);
	// 이번 달
	int month = now.get(Calendar.MONTH)+1;
	// 이번 달 마지막 날
	int lastDay = now.getActualMaximum(Calendar.DAY_OF_MONTH);
	// 현재 날짜
	int today = now.get(Calendar.DATE);
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 등록</title>
</head>
<body>
	<h1>도서 등록 페이지</h1>
	<form action="insert.jsp" method="post" enctype="multipart/form-data">
		<fieldset>
			<legend>도서 등록폼</legend>
			<p>
			<input name="title" placeholder="제목 입력"/>
			</p>
			<p>
			<input name="author" placeholder="저자 입력"/>
			</p>
			<p>
			<label>책 이미지
			<input name="image" type="file"/>
			</label>
			</p>
			<p>
			출판일 : <select id="year" name="year">
					<% for(int i=year; i >= year-100 ; i-- ) {
						%> <option> <%=i %> </option> 
						<%} %>		
					</select><em>년</em>
					<select id="month" name="month">
							<%for(int i=1; i<=12; i++) { %>
							<option <%if(i==month) {  %> selected<% } %>> <%=i %> </option>
							<% } %>
					</select><em>월</em>
					<select id="date" name="date">
							<%for(int i=1; i<= lastDay; i++) { %>
							<option <%if(i==today) { %> selected <%} %>><%=i %></option>
							<%} %>
					</select><em>일</em>
			</p>
			<button>등록</button>
			<a href="index.jsp">취소</a>
		</fieldset>
	</form>
</body>
</html>