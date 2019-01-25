<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%! 
	//클래스 영역(멤버 자리)
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello ? JSP</title>
</head>
<body>
	<% int a = 5;  
	// _jspService() 메서드의 지역변수
		String name = "박지훈";
	%>
	<h1> hello jsp !
	<% out.print(name); %>
	<%=name %>  <%-- 위와 동일한 코드 --%>
	</h1>
	<!-- HTML 주석 : 디자이너, 퍼블리셔까지 할 얘기들-->
	<%-- 
	
		JSP는 Java Server Page의 줄임말로
		HTML 안에 java 코드를 삽입하는 형태입니다.
		
		Servlet 보다 훨씬 개발이 편리합니다.
		하지만 JSP 도 결국 Servlet 입니다.
		hello.jsp -> hello_jsp.java -> hello_jsp.class
		-> 인스턴스화 
		
		JSP 주석 : 자바로 만들어질때 사라짐(개발용 주석)
		
		- JSP 문법
		
		1) 지시어 : <%@  %> page, include, taglib
					신경쓸 필요 별로 없음
					
		2) 선언문 : <%!  %> 클래스 영역(메서드 및 멤버필드)
					거의 안씀 (99.99%)
					
		3) 스크립트릿 : <% %> _jspService() 메서드안
						주로 코딩을 합니다. (중요!)
						
		4) 표현식 : <%= %> 출력을 위한 코드
					<% out.print(); %> 와 동일함
					(자바의 데이터를 HTML에 쉽게 출력
					하기 위해서 사용)
		
	--%>
</body>
</html>