<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MODEL1 게시판</title>
<%@ include file="/WEB-INF/template/link.jsp" %>
<link rel="stylesheet" href="/css/index.css" />
</head>
<body>
<%@ include file="/WEB-INF/template/header.jsp" %>
<h2 class="title"><i class="far fa-list-alt"></i> 게시글 목록</h2>
	<p class="no_article">
		<i class="fas fa-skull-crossbones"></i> 아직 게시글이 없습니다.
	</p>
	<ul id="articleList">
		<li class="article">
			<a href="/article.jsp?no=">
				<div class="card_user">
					<img src="/profile/profile.jpg" width="100" />
					<strong>테스터</strong>
				</div>
				<h3 class="title">
				제목입니다.제목입니다.제목입니다.
					제목입니다.제목입니다.제목입니다.
					제목입니다.제목입니다.제목입니다.
					제목입니다.제목입니다.제목입니다.
					제목입니다.제목입니다.제목입니다.
				</h3>
				<time>20분 전</time>
				<strong class="comment"><i class="fa fa-comment"></i> 21222</strong>
				<span class="hit"><i class="fa fa-eye"></i> 100</span>
				<div class="btn_like">
					<i class="fas fa-heart"></i>
					<i class="far fa-heart"></i>
					<span class="screen_out">좋아요</span>
					<strong class="num_like">1000</strong>
				</div>
			</a>
		</li>
	</ul>
	<div class="paginate">
		<!-- 이전 페이지 이동 :  비활성 -->
		<span title="이전 페이지 없음"><i class="fa fa-chevron-left"></i></span>
		<!-- 이전 페이지 이동 :  활성 -->
		<a href='' title="이전 페이지로"><i class="fa fa-chevron-left"></i><span class="screen_out">이전 페이지</span></a>
		<!-- 페이지들 -->
		<a href="" title="1">1</a>
		<a href="" title="2">2</a>
		<strong title="현재 3페이지">3</strong>
		<a href="" title="4">4</a>
		<a href="" title="5">5</a>
		<!-- 다음 페이지 이동 :  활성 -->
		<a href='' title="다음 페이지로"><i class="fa fa-chevron-right"></i><span class="screen_out">다음 페이지</span></a>
		<!-- 다음 페이지 이동 :  비활성 -->
		<span title="다음 페이지 없음"><i class="fa fa-chevron-right"></i></span>
	</div><!--//paginate-->

	<div class="box_btn">
		<a href="/writeForm.jsp" class="btn"><i class="fas fa-pen-nib"></i> 글쓰기</a>
	</div>
<%@ include file="/WEB-INF/template/footer.jsp" %>
<script src="js/jquery.js"></script>
<script src="js/fix-footer.js"></script>
</body>
</html>



