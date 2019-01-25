<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이돌 관리 웹서비스</title>
<link rel="icon" href="img/favicon.png">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Jua|Nanum+Gothic+Coding|Yeon+Sung" rel="stylesheet">
<style>
	html {
		height : 100%;
	}
	body {
		margin: 0;
		width : 100%;
		height : 100%;
		text-align: center;
		background: #424242;
	}
	h1 {
		font-family: 'Jua', sans-serif;
		color: #fff;
		font-weight: 700;
		font-size: 60px;
	}
	.fas {
		font-size: 60px;
		color: #fff;
		font-weight: 700;
	}
	a {
		text-decoration: none;
	}
	ul {
		position : fixed;
		top : 50%;
		left : 50%;
		margin : -150px 0 0 -200px;
		width : 400px;
		height: 200px;
		border : 3px solid #fff;
		line-height : 200px;
	}
	ul {
		padding : 0;
	}
	li {
		padding : 0; 
		list-style: none;
		font-family: font-family: 'Yeon Sung', cursive;
		font-size: 35px;
		font-weight: 400;
		margin-bottom: 20px;
	}
	li a {
		color : #fff;
		text-decoration: none;
		text-shadow: 1px 1px 1px #fff;
	}
</style>
</head>
<body>
	<a href="index.jsp"><h1><i class="fas fa-address-card"></i> 아이돌 관리 웹서비스</h1></a>
	<ul>
		<li><a href="groupList.jsp">그룹 목록</a></li>
		<li><a href="idolList.jsp">아이돌 목록</a></li>
	</ul>
</body>
</html>