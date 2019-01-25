<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드 연습</title>
</head>
<body>
<h1>회원가입</h1>
<%--
	enctype이 application/x-www-form-urlencoded 이면
	그냥 글자를 파라미터로 넘기는 것
	
	만약에 파일업로드를 하려면 enctype을 
	multipart/form-data
 --%>
<form action="join.jsp" method="post"
enctype="multipart/form-data">
	<fieldset>
		<legend>회원가입폼</legend>
		<div>
			<input name="id" placeholder="아이디 입력"/>
		</div>
		<div>
			<input name="pwd" type="password" placeholder="비밀번호 입력">
		</div>
		<div>
			<input name="profile" type="file">
		</div>
		<button>회원가입하기</button>
	</fieldset>
</form>
</body>
</html>