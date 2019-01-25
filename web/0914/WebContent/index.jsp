<%@page import="vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		JSP 내장객체
		- request : 요청객체
		- response : 응답객체
		- page : this
		- application : 서블릿컨텍스트(WAS : 톰캣)
		- session : 세션객체 (기본 30분동안 유지)
		
		session 객체
		- 브라우저가 켜있는 동안 or 30분동안 접속이 없으면
		- session에 attribute를 마음대로 세팅 or 얻기 가능
		- 
	*/
	//boolean flag = session.isNew();
	
	//getAttribute의 리턴자료형은 Object형이므로 String으로 강제형변환
	User loginUser = (User)session.getAttribute("loginUser");
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Awesome Web Service</h1>
<%-- 로그인 되어있지 않을때 --%>
<%if(loginUser==null) { %>
<form action="login.jsp" method="post">
	<fieldset>
		<legend>로그인 폼</legend>
		<p>
		<input name="id" placeholder="아이디"/>
		</p>
		<p>
		<input name="pwd" placeholder="비밀번호" type="password"/>
		</p>
		<button>로그인</button>
	</fieldset>
</form>
<a href="joinForm.jsp">회원가입</a>
<%} else { %>
<%-- 로그인 되었을때 --%>
	<h2><%=loginUser.getNickname() %>님 환영합니다.</h2>
	<a href="logout.jsp">로그아웃</a>
<%} %>
</body>
</html>
