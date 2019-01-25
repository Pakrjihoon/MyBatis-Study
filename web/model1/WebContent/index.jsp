<%@page import="org.bjd.model1.util.PaginateUtil"%>
<%@page import="org.bjd.model1.vo.Article"%>
<%@page import="java.util.List"%>
<%@page import="org.bjd.model1.dao.BoardDAO"%>
<%@page import="org.bjd.model1.vo.PageVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

String pageStr = request.getParameter("page");
//Default page number
int pageNo = 1;
if(pageStr!=null) {
	pageNo = Integer.parseInt(pageStr);
}//if end

//한 페이지당 보여질 게시물 수
int numPage = 3;
PageVO pageVO = new PageVO(pageNo, numPage);
List<Article> articles = BoardDAO.selectList(pageVO);

//전체 게시글 수
int total = BoardDAO.selectTotal();
//한 페이지에 보여질 페이지블록 수
int numBlock = 5;
String url = "/index.jsp";
String param = "page=";
String paginate = PaginateUtil.getPaginate(pageNo, total, numPage, numBlock, url, param);

%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<title>MODEL1 게시판</title>
<%@ include file="/WEB-INF/template/link.jsp" %>
<link rel="stylesheet" href="css/index.css">
</head>
<body>
<%@ include file="/WEB-INF/template/header.jsp" %>
<%--
	header.jsp에서 loginMember라는 변수를 선언했기 대문에
	header.jsp를 include하는 소스 이후로는
	loginmember를 사용할 수 있습니다.
--%>
<% %>
<div id="content">
	<div class="aux">
	<h2 class="title"><i class="far fa-list-alt"></i> 게시글 목록</h2>
	<%if(articles.isEmpty()){ %>
	<p class="no_article">
		<i class="fas fa-skull-crossbones"></i> 아직 게시글이 없습니다.
	</p>
	<%} %>
	<ul id="articleList">
	<%for(Article article : articles) { %>
		<li class="article">
			<a href="/article.jsp?no=<%=article.getNo()%>">
				<div class="card_user">
					<img src="<%=article.getProfile() %>" width="100" />
					<strong>테스터</strong>
				</div>
				<h3 class="title">
				<%=article.getTitle() %>
				</h3>
				<time data-time="<%=article.getRegDate() %>"></time>
				<strong class="comment"><i class="fa fa-comment"></i> <%=article.getRepliesNum() %></strong>
				<span class="hit"><i class="fa fa-eye"></i> <%=article.getHit() %></span>
				<div class="btn_like">
					<i class="fas fa-heart"></i>
					<i class="far fa-heart"></i>
					<span class="screen_out">좋아요</span>
					<strong class="num_like"><%=article.getLikesNum() %></strong>
				</div>
			</a>
		</li>
		
		<%} %>
	</ul>
	<%=paginate %>
	<% if(loginMember!=null) { %>
	<div class="box_btn">
		<a href="/writeForm.jsp" class="btn"><i class="fas fa-pen-nib"></i> 글쓰기</a>
	</div>
	<%} %>
	</div><!--//aux -->
</div><!--//content-->
<%@ include file="/WEB-INF/template/footer.jsp" %>
<script src="/js/jquery.js"></script>
<script src="/js/fix-footer.js"></script>
<script src="/js/moment-with-locales.js"></script>
<script>
//한국어 적용
moment.locale("ko");

function displayTime() {
	//time 요소 각각 
	$(".article time").each(function() {
		var time = this.dataset.time;
		$(this).text(moment(time).fromNow());
	});
		
}//displayTime() end

//첫번째 실행
displayTime();
setInterval(displayTime,1000);
</script>
<%
	// 만약 회원가입을 하자마자 index.jsp에 왔다면
	// session에 msg라는 attribute가 들어가 있습니다.
	String msg = (String)session.getAttribute("msg");
	if(msg!=null) {
		// 한번 썼으면 다시 지워야 함
		session.removeAttribute("msg");
%>
<script>
	alert("<%=msg%>");
	
</script>
<%} %>
</body>
</html>
