<%@page import="java.util.LinkedHashSet"%>
<%@page import="java.util.Set"%>
<%@page import="org.bjd.model1.vo.Article"%>
<%@page import="org.bjd.model1.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String noStr = request.getParameter("no");
	int no = 0;
	
	if(noStr!=null) {
		no = Integer.parseInt(noStr);
	} //if end
	Article article = BoardDAO.selectOne(no);
	
	
	if(article==null) {
		%>
		<script>
		alert("해당 게시글이 존재하지 않습니다.");
		location.href="/index.jsp";
		</script> 
	<% }else{ 
		// 유저가 봤던 글 번호를 넣어두는 SET(중복 제거)
		Set<Integer> viewPages = (Set)session.getAttribute("viewPages");
			
		//만약에 없으면 처음이니 생성
			if(viewPages==null) {
				viewPages = new LinkedHashSet();
			}//if end
			
			//만약 이 페이지 번호가 없으면
			if(!viewPages.contains(no)) {
				//넣어서
				viewPages.add(no);
				//조회수 증가
				BoardDAO.updateHit(no);
				//session에 다시 세팅
				session.setAttribute("viewPages", viewPages);
				//보여지는 article에 1증가
				article.setHit(article.getHit()+1);
			}//if end
	%>    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<title>게시글 상세 보기</title>
	<link rel="stylesheet" href="/css/reset.css" />
	<link rel="stylesheet" href="/css/kakao.font.css" />
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css" integrity="sha384-/rXc/GQVaYpyDdyxK+ecHPVYJSN9bmVFBvjA/9eOB+pb3F2w2N6fc5qB9Ew5yIns" crossorigin="anonymous">
	<link rel="stylesheet" href="/css/default.css" />
	<link rel="stylesheet" href="/css/tui-editor-contents.min.css">
	<link rel="shortcut icon" type="/image/x-icon" href="img/logo.png"/>
	<link rel="stylesheet" href="/css/article.css"/>
</head>
<body>
<%@include file="/WEB-INF/template/header.jsp" %>
<div id="content">
<div class="aux">
		<h2 class="title"><i class="far fa-eye"></i> 게시물 상세 보기</h2>
		<div id="contentsBox">
			<div id="infoBox">
				<dl>
					<dt class="screen_out">번호</dt>
					<dd id="no"><%=article.getNo() %></dd>
					<dt class="screen_out">글쓴이정보</dt>
					<dd class="card_user">
						<img src="<%=article.getProfile() %>" width="100" />
						<strong><%=article.getNickname() %></strong>
					</dd>
					<dt class="screen_out">글쓴시간</dt>
					<dd>
						<time id="regdate"><%=article.getRegDate() %></time>
					</dd>
					<dt class="screen_out">조회수</dt>
					<dd id="hit">
						<i class="fa fa-eye"></i> <%=article.getHit() %>
					</dd>
				</dl>
				<h3 id="title"><%=article.getTitle() %></h3>
			</div>
			<div id="viewerSection"></div>
			<div class="box_btn">
					<button class="btn_like like">
					<i class="fas fa-heart"></i>
					<i class="far fa-heart"></i>
					<span class="screen_out">좋아요</span>
					<strong class="num_like"><%=article.getLikesNum() %></strong>
					</button>
				<div id="boxBtn">
				<%if(loginMember!=null&&loginMember.getNo()==article.getMemberNo()) { %>
				<a href="/updateForm.jsp" class="btn" id="modifyBtn"><i class="far fa-edit"></i> 수 정</a>
				<a href="/delete.jsp" class="btn" id="deleteBtn"><i class="far fa-trash-alt"></i> 삭 제</a>
				<%} %>
				<a href="/index.jsp" class="btn"><i class="far fa-list-alt"></i> 게시판으로</a>
				</div>
			</div>
		</div>
		<div id="replyBox">
			<h3><i class="fa fa-comment"></i> 댓글 <%=article.getRepliesNum() %>개</h3>
			<div id="formBox">
			<form action="/writeReply.jsp" method="post">	
				<textarea maxlength="140" id="contentsField" placeholder="새 글을 입력합니다."></textarea>
				<button id="writeBtn" class="btn"><i class="fas fa-pencil-alt"></i> 댓글쓰기</button>
			</form>
			</div><!--//formBox-->
<p class="no_reply"><i class="fas fa-skull-crossbones"></i> 댓글이 아직 없습니다.</p>

		<div id="replyListBox">
			<ul>
				<li>
					<div class="card_user">
						<img src="/profile/profile.jpg" width="100"/>
						<strong>테스터</strong>
					</div><!-- //card_user -->
					<div class="box_reply">
						<div class="comments">내용ㅇㅇ잉ㄹㅇ</div>
						<a href="/deleteReply.jsp" class="btn delete">
							<i class="fas fa-times"></i>
							<span class="screen_out">삭제</span>
						</a>
						<time class="time" data-time="">10분 전</time>
					</div><!--//box_reply-->
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
		</div><!--//replyListBox -->
		</div><!--//replyBox-->
	</div><!--//aux-->
	</div><!--//content -->
<%@ include file="/WEB-INF/template/footer.jsp" %>
<script src="/js/jquery.js"></script>
<script src="/js/tui-code-snippet.min.js"></script>
<script src="/js/moment-with-locales.js"></script>
<script src='/js/markdown-it.js'></script>
<script src="/js/to-mark.min.js"></script>
<script src="/js/codemirror.js"></script>
<script src="/js/highlight.js"></script>
<script src="/js/squire-raw.js"></script>
<script src="/js/tui-editor-Editor.js"></script>
<script>
	$(".btn_like").click(function() {
		<%if(loginMember==null) { %>
		alert("로그인 후 이용할 수 있습니다.");
		<%} else {%>
			//ajax
			$.ajax({
				url:"/ajax/like.jsp",
				type:"post",
				dataType:"json",
				data:{type:"B", typeNo:<%=no%>}, //no = article.getNo()
				error:function(){
					alert("서버 점검중")
				},
				success:function() {
					
				}//success end
			}); // ajax() end
		<% }%>
	}); //click() end
    $('#viewerSection').tuiEditor({
        viewer: true,
        height: 600,
        initialValue:`<%=article.getContents()%>`
    });
</script>
</body>
</html>
<%}%>