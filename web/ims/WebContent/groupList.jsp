<%@page import="com.bjd.ims.vo.Group"%>
<%@page import="java.util.List"%>
<%@page import="com.bjd.ims.dao.GroupsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	List<Group> list = GroupsDAO.selectList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그룹 목록</title>
</head>
<style>
	h1 {
		font-size : 60px;
		font-weight: bold;
	}
</style>
<body>
	<h1>그룹 목록</h1>
	<table border ="1">
	<caption> 그룹 리스트 </caption>
		<thead>
			<tr>
				<th>그룹 번호</th>
				<th>이 름</th>
				<th>데뷔 일자</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
		<% for(Group group : list) { %>
			<tr>
				<td><%= group.getGroupId()%></td>
				<td><%= group.getName()%></td>
				<td><%= group.getFormatRealDebutDate()%></td>
				<td>
				<a href="updateGroupForm.jsp?groupId=<%=group.getGroupId()%>">수정</a>
				</td>
				<td>
				<a href="deleteGroup.jsp?groupId=<%=group.getGroupId()%>">삭제</a>
				</td>
			</tr>
		<% } %>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="5">
				<a href="insertGroupForm.jsp">그룹 등록</a>
				<a href="index.jsp">돌아가기</a>
			</tr>
		</tfoot>
	</table>
	<button id="btn">클릭하기</button>
	<script src="js/jquery.js"></script>
	<script>
		$("button").click(function {
			alert("하이염!");
		});
	</script>
</body>
</html>