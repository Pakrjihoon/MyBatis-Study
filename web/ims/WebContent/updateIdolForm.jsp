<%@page import="com.bjd.ims.dao.GroupsDAO"%>
<%@page import="com.bjd.ims.vo.Group"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	//Date 객체를 사용하지 않고 Calendar 객체를 사용한다.
	Calendar now = Calendar.getInstance();
	int year = now.get(Calendar.YEAR);
	List<Group> groups = GroupsDAO.selectList();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이돌 입력</title>
</head>
<body>
	<h1>아이돌 수정폼</h1>
	<form action="correctIdol.jsp" method="post">
		<fieldset>
			<legend>아이돌 수정폼</legend>
			<p>
				<label for="name">아이돌 이름</label>
				<input id="name" name="name" placeholder="이름 입력">	 
			</p>
			<p>
				<label for="height">키</label>
				<input id="height" name="height" placeholder="키 입력">
			</p>
			<p>
				<label for="weight">몸무게</label>
				<input id="weight" name="weight" placeholder="몸무게 입력">
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
			<p>
				<label for="agentName">소속사</label>
				<input id="agentName" name="agentName" placeholder="소속사 입력">
			</p>
			<p>
				<label>
				<input checked type="radio" name="gender" value="M">
				남자
				</label>
				<label>
				<input checked type="radio" name="gender" value="W">
				여자
				</label>
			</p>
			<p>
				<select name="groupId">
				<%for(Group group : groups) { %>
					<option value="<%=group.getGroupId() %>" >
					<%=group.getName() %>
					</option>
					<% } %>
				</select>
			</p>
			<button>아이돌 수정</button>
		</fieldset>
	</form>	
</body>
</html>