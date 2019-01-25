<%@page import="com.bjd.ims.dao.GroupsDAO"%>
<%@page import="com.bjd.ims.vo.Group"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	// 파라미터를 받아서 확인을 해본다. 해당 그룹 아이디의 파라미터를 받았는지
	String groupId = request.getParameter("groupId");
	Group group = GroupsDAO.selectOne(Integer.parseInt(groupId));
	
	//Date 객체를 사용하지 않고 Calendar 객체를 사용한다.
	Calendar now = Calendar.getInstance();
	int year = now.get(Calendar.YEAR);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그룹 수정</title>
</head>
<body>
	<h1>그룹 수정폼</h1>
	<form action="updateGroup.jsp" method="post">
		<fieldset>
			<legend>그룹 수정폼</legend>
			<!--  WHERE 조건을 받기 때문에 반드시 써주어야한다. -->
			<input type="hidden" name="groupId" value="<%=groupId%>">
			<p>
				<label for="name">그룹명</label>
				<input id="name" name="name" placeholder="그룹명 입력" value="<%=group.getName()%>"> 
			</p>
			<p>
				<select name="year">
				<% for(int i = year; i > year - 105; i--) { 
						if(i==group.getDebutYear()) {%>
					<option selected><%=i %></option>
				<% } else { %>
				<option><%=i %></option>
				<%} }%>
				</select>년
				<select name="month">
				<%for (int i =1; i<13; i++) { 
					if(i==group.getDebutMonth()) {%>
					<option selected><%=i+1 %></option>
				<%} else { %>
				<option><%=i %></option>
				<%}} %>
				</select>월
				<select name="date">
				<%for (int i=1; i<32; i++) {  
					if(i==group.getDebutDay()){ %>
					<option selected><%=i %></option>
				<%} else{  %>
				<option><%=i %></option>
				<%}} %>
				</select>일
			</p>
			<button>그룹 수정</button>
			<a href="groupList.jsp">목록으로 이동</a>
		</fieldset>
	</form>	
</body>
</html>