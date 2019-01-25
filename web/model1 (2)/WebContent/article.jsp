<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세 보기</title>
<%@ include file="/WEB-INF/template/link.jsp" %>
<link rel="stylesheet" href="/css/tui-editor-contents.min.css">
<link rel="stylesheet" href="/css/article.css" />
</head>
<body>
<%@ include file="/WEB-INF/template/header.jsp" %>
<h2 class="title"><i class="far fa-eye"></i> 게시물 보기</h2>
		<div id="contentsBox">
			<div id="infoBox">
				<dl>
					<dt class="screen_out">번호</dt>
					<dd id="no">1</dd>
					<dt class="screen_out">글쓴이정보</dt>
					<dd class="card_user">
						<img src="/profile/profile.jpg" width="100" />
						<strong>테스터</strong>
					</dd>
					<dt class="screen_out">글쓴시간</dt>
					<dd>
						<time id="regdate">2018년 10월 1일 4시 32분 23.345초</time>
					</dd>
					<dt class="screen_out">조회수</dt>
					<dd id="hit">
						<i class="fa fa-eye"></i> 88
					</dd>
				</dl>
				<h3 id="title">제목입니다.제목입니다.제목입니다.제목입니다.제목입니다.제목입니다.제목입니다.제목입니다.제목입니다.</h3>
			</div>
			<div id="viewerSection"></div>
			<div class="box_btn">
					<button class="btn_like like">
					<i class="fas fa-heart"></i>
					<i class="far fa-heart"></i>
					<span class="screen_out">좋아요</span>
					<strong class="num_like">1000</strong>
					</button>
				<div id="boxBtn">
				<a href="/updateForm.jsp?no=" class="btn" id="modifyBtn"><i class="far fa-edit"></i> 수 정</a>
				<a href="/delete.jsp?no=" class="btn" id="deleteBtn"><i class="far fa-trash-alt"></i> 삭 제</a>
				<a href="/index.jsp" class="btn"><i class="far fa-list-alt"></i> 게시판으로</a>
				</div>
			</div>
		</div>
		<div id="replyBox">
			<h3><i class="fa fa-comment"></i> 댓글 10000개</h3>
			<div id="formBox">
			<form action="writeReply.html" method="post">	
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
						<a href="deleteReply.html" class="btn delete">
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
<%@ include file="/WEB-INF/template/footer.jsp" %>
<script src="/js/jquery.js"></script>
<script src="/js/fix-footer.js"></script>
<script src="/js/tui-code-snippet.min.js"></script>
<script src='/js/markdown-it.js'></script>
<script src="/js/to-mark.min.js"></script>
<script src="/js/codemirror.js"></script>
<script src="/js/highlight.js"></script>
<script src="/js/squire-raw.js"></script>
<script src="/js/tui-editor-Editor.js"></script>
<script>

    $('#viewerSection').tuiEditor({
        viewer: true,
        height: 600,
        initialValue:`# Toast UI 테스트
## 안녕하세요?
지금 **테스트**중입니다.
> 이글은 인용문입니다.
1. 강아지
2. 고양이
* 리스트1
* 리스트2
![귀여운 고양이](https://t1.daumcdn.net/thumb/R1280x0/?fname=http://t1.daumcdn.net/brunch/service/user/4arX/image/hXVdEebWb_3V5cW6eRhgNkM9z60.jpg "아주 귀여운 고양이")

| 제목1 | 제목2 | 제목3 |
| --- | --- | --- |
| 안녕 | 하세 | 용 |`
    });
</script>
</body>
</html>