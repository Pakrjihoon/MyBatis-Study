<%@page import="com.bjd.ims.vo.Idol"%>
<%@page import="com.bjd.ims.dao.IdolsDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	List<Idol> list = IdolsDAO.selectList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이돌 목록</title>
</head>
<style>
	h1 {
		font-size : 60px;
		font-weight: bold;
	}
</style>
<body>
	<h1>아이돌 목록</h1>
	<table border ="1">
	<caption> 아이돌 리스트 </caption>
		<thead>
			<tr>
				<th>아이돌 번호</th>
				<th>이 름</th>
				<th>키</th>
				<th>몸무게</th>
				<th>생년월일</th>
				<th>소속사</th>
				<th>성별</th>
				<th>그룹명</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
		<% for(Idol idol : list) { %>
			<tr>
				<td><%= idol.getIdolId()%></td>
				<td><%= idol.getName()%></td>
				<td><%= idol.getHeight()%></td>
				<td><%= idol.getWeight()%></td>
				<td><%= idol.getFormatBirthDate()%></td>
				<td><%= idol.getAgentName()%></td>
				<td><%= idol.getRealGender()%></td>
				<td><%= idol.getGroupName()%></td>
				<td><a href="updateIdolForm.jsp?idolId=<%=idol.getIdolId() %>">수정</a></td>
				<td><a href="deleteIdol.jsp?idolId=<%=idol.getIdolId() %>">삭제</a></td>
			</tr>
		<% } %>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="10">
				<a href="insertIdolForm.jsp">아이돌 등록</a>
				<a href="index.jsp">돌아가기</a>
				</td>
			</tr>
		</tfoot>
	</table>
</body>
</html>