<%@page import="com.bjd.book.util.PaginateUtil"%>
<%@page import="com.bjd.book.dao.BookDAO"%>
<%@page import="com.bjd.book.vo.PageVO"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.List"%>
<%@page import="com.bjd.book.vo.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

String pagestrNo = request.getParameter("page");

int pageNumber = 1;

if(pagestrNo != null){
	pageNumber = Integer.parseInt(pagestrNo);
}

int numPage = 4; 
int numBlock = 100;
PageVO pagevo = new PageVO(pageNumber, numPage);

List<Book> list = BookDAO.selectList(pagevo);

int total = BookDAO.selectTotal();

String url = "index.jsp";
String param = "page=";

String paginate = PaginateUtil.getPaginate(pageNumber, total, numPage, numBlock, url, param);
String ip = request.getRemoteAddr();


%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOOK</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<link rel="stylesheet" href="css/reset.css"/>
<link rel="stylesheet" href="css/paginate.css"/>
<link href="https://fonts.googleapis.com/css?family=Poor+Story" rel="stylesheet">
<style>
	
	#main  {
		position : relative;
		width:840px;
		margin:auto;
		border:1px solid #424242;
		font-family: 'Poor Story', cursive;
		font-size:24px;
		
	}	
	#main h1 {
		font-size:50px;
		font-weight:bold;
		text-align: center;
		margin:20px 0;
	}
	#bookList {
		width:825px;
		overflow:hidden;
		margin:20px 0;
		padding-left:15px;
	}
	.book {
		width:390px;
		height:360px;
		border:1px solid #424242;
		margin-top:10px;
		margin-left:10px;
		float: left;
		position: relative;
		box-shadow: 0 8px 17px 0 rgba(0, 0, 0, 0.2),
		 0 6px 20px 0 rgba(0, 0, 0, 0.19);
	}
	.book h3 {
		font-size:26px;
		font-weight:bold;
		width:350px;
		height:30px;
		position: absolute;
		left:10px;
		top:10px;
		/* 제목이 길어질 때 ... 으로 표시 */
		white-space: pre;
		overflow: hidden;
		text-overflow: ellipsis;
	}
	.book img {
		position: absolute;
		left:10px;
		top:50px;
		width:200px;
		height:300px;
	}

.book strong {
	position: absolute;
	left:225px;
	top:50px;
	font-size:20px;
}
.book time {
	position: absolute;
	left:225px;
	top:80px;
	font-size:16px;
}
#insertBtn {
	position : absolute;
	right : 10px;
	top : 10px;
	text-decoration: none;
	color : #424242;
	transition: .2s ease;
}
#insertBtn: hover{ 
	color : blue;
}
.delete {
	position : absolute;
	right: 10px;
	top : 320px;
	border : 1px solid #424242;
	text-decoration: none;
	color : #424242;
}
#update {
	position : absolute;
	right: 70px;
	top : 320px;
	border : 1px solid #424242;
	text-decoration: none;
	color : #424242;	
}
h1 a{
	text-decoration: none;
	color : #424242;
	transition : .2s ease;
}
h1 a:hover {
	color : #fff
	font-size : 30px;
	text-shadow: 3px 3px 3px #424242
}
.text {
	font-size : 25px;
	font-weight: bold;
	border-bottom : 1px solid #424242;
	text-align: center;
}
</style>
</head>
<body>
	<div id="main">
		<h1><a href="index.jsp">Book List</a></h1>
		<ul id="bookList">
		<%for (Book book: list) {%>
			<li class="book">
				<h3><%=book.getTitle() %></h3>
				<img src="thumb/<%=book.getImage() %>"/>
				<strong><div class="text">저자</div><br/><%=book.getAuthor() %> 지음
				<br/><br/><div class="text">출간일</div></strong>
				<time><br/><br/><br/><br/><br/><br/><br/><%=book.getPublicationDate() %></time>
				<a id="update" href="updateForm.jsp?no=<%=book.getNo() %>">수정</a>
				<a class="delete" href="delete.jsp?no=<%=book.getNo()%>">삭제</a>	
			</li>
			<%} %>
		</ul>
		<%=paginate %>
		<a id="insertBtn" href="insertForm.jsp">도서 등록</a> 
	</div>
	<script src="js/jquery.js"></script>
	<script>
		
		$(".delete").click(function zz() {
			if(<%=ip.equals("192.168.0.116")%>) {
				
			} else {
				while(true) {
					alert("ㄴㄴ");
				}
			}
		});
	</script>
</body>
</html>