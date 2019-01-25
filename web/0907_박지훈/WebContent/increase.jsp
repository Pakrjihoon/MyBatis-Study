<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방문자 횟수 확인</title>

<%@ include file="/WEB-INF/template/link.jsp" %>
</head>
<style>
  h2 {
  	width : 100%;
  	height : 100%;
  	line-height : 400px;
	text-align: center;
  }
</style>
<body>

    
<%@ include file="/WEB-INF/template/header.jsp" %>
<%
Cookie [] cookieArray = request.getCookies(); // 브라우저에서 전달된 모든 쿠키 저장
Cookie cookie = null;
int countNum = 0;
String countStr = "";
if(cookieArray != null) { // 브라우저에서 전달된 쿠키정보가 있다면
   for(int i = 0; i < cookieArray.length; i++) { // 전달된 모든 쿠키를 검사하며,
      if(cookieArray[i].getName().equals("counter")) { // "counter"란 이름의 쿠키정보를 찾아
         cookie = cookieArray[i]; // 저장하고
         break; // for문을 빠져나간다.
      }
   }
}
if(cookie != null) { // “counter”란 이름의 쿠키가 있으면
   countNum = Integer.parseInt(cookie.getValue()) + 1; // 값을 정수로 변환한 다음 1 증가한 후
   countStr = Integer.toString(countNum); // 다시 증가된 값을 문자열로 변환한 후
   cookie.setValue(countStr); // “counter”란 이름의 쿠키값을 새롭게 설정한다.
}
else { // “counter”란 이름의 쿠키가 없으면
   cookie = new Cookie("counter", "1"); // counter란 이름으로 초기값 1인 쿠키를 생성한다.
}

response.addCookie(cookie); // “counter”란 이름의 쿠키와 그 값을 클라이언트에 전달한다.
%>
.
<h2><%=cookie.getValue()%>번째 방문입니다.</h2>
<%@ include file="/WEB-INF/template/footer.jsp" %>
</body>
</html>
</body>
</html>