<%@page import="java.util.Random"%>
<%@page import="java.util.TreeSet"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	// 중복을 허용하지 않는 / 정렬
	Set<Integer> lottos = new TreeSet();
	Random rnd = new Random();
	
	while(lottos.size()<6) {
		lottos.add(rnd.nextInt(45)+1);	
	} // while end
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로또 번호 추출기</title>
<style>
	body {
		text-align: center;
		background: rgba(0,0,0,.3);
	}
	.ball {
		width : 100px;
		height : 100px;
		border-radius: 50px;
		background-color: #FCE4EC;
		box-shadow: 0 12px 15px 0 rgba(0,0,0, .24);
		font-size: 60px;
		font-weight: bold;
		text-align : center;
		line-height : 100px;
		color : #fff;
		text-shadow: 2px 2px 2px #424242; 
		display: inline-block;
		font-family: Arial, sans-serif;
	}
	.b1 {
		background: #fcc43d;
	}
	.b2 {
		background: #8cc6e7;
	}
	.b3 {
		background: #f18d80;
	}
	.b4 {
		background: #a7a2de;
	}
	.b5 {
		background: #6bce9e;
	}
	h1 {
		font-size: 50px;
		color: #fff;
		font-weight: bold;
		text-shadow: 1px 1px 1px #424242;
	}
</style>
</head>
<body>
<h1>2018년 9월 8일 로또 1등 예측</h1>
<% for(int num : lottos) {  %>
<div class="ball b<%=((num-1)/10)+1 %>"><%=num %></div>
<%  } %>
</body>
</html>