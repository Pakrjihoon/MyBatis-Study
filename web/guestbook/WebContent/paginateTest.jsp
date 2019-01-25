<%@page import="org.pjh.guestbook.util.PaginateUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		현재 페이지 : pageNo
		한 페이지에 보여질 게시물 수 : numPage
		한 페이지에 보여질 페이지 수 : numBlock
		전체 게시물 수 : total
		주소 : url
		파라미터 : param
    */
    int pageNo = Integer.parseInt(request.getParameter("page"));
    String paginate = PaginateUtil.getPaginate(4, 50, 3, 5, "paginateTest.jsp", "page=");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%-- reset.css / font-awesome.css / paginate.css --%>
<link rel="stylesheet" href="css/reset.css"/>
<link rel="stylesheet" href="css/paginate.css"/>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
</head>
<body>
<h1>페이징 처리 연습</h1>
<%=paginate %>

</body>
</html>