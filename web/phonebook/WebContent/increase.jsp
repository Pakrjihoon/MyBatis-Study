<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!--  선언문으로 작성시 멤버필드로  -->
<%! int i = 0; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Increase Page</title>
<%@ include file="/WEB-INF/template/link.jsp"%>
</head> 
<%@ include file="/WEB-INF/template/header.jsp" %>
<div id="content">
	<h2><%=++i %>번째 방문입니다.</h2>
</div>
<%@ include file="/WEB-INF/template/footer.jsp" %>
</body>
</html>