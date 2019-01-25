<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>사전답사 신청하기</title>
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/tui-editor.min.css">
    <link rel="stylesheet" href="/css/tui-editor-contents.min.css" />
    <link rel="stylesheet" href="/css/tui-date-picker.css">
    <link rel="stylesheet" href="/css/default.css">
    <link rel="stylesheet" href="/css/header.css">
    <link rel="stylesheet" href="/css/footer.css">
    <link rel="stylesheet" href="/css/writeEP.css">
    <link rel="icon" href="/img/favicon-96x96.png">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
    <style>
        #destination,#price, #endDate ,#detailDestination{
            display: block;
            margin: 20px 0;
        }
        #logoImage {
            background-image: url("img/로고.png");
        }
        .Explore {
            width: 150px;
            height: 50px;
            outline: none;
            cursor: pointer;
            background-color: #f0f0f0;
            color: #424242;
            font-size: 25px;
            border: none;
            transition: .2s ease;
            border-radius: 10px;
        }
        .Explore:hover {
            background-color: #40BEED;
            color: #fff;
        }
        #sido2,#gugun2 {
            width: 150px;
            height: 30px;
            font-size: 20px;
            border-radius: 5px;
            border: 1px solid #d0d0d0;
            margin-left: 90px;
        }
        #gugun2 {
            margin-left: 20px;
        }
        #endDate>label {
            margin-left: 30px;
        }
        #price, #endDate {
            font-size: 20px;
        }
        #detailDestination>input {
            width: 500px;
            padding-left: 10px;
        }
    </style>
</head>
<body>
<%@include file="/WEB-INF/template/header.jsp" %>
<div id="wrap">
    <form action="" method="post">
        <h2 id="planner">사전답사 신청</h2>
        <div id="title">
            <label for="plannerTitle" style="font-size: 20px">제목</label>
            <input type="text" id="plannerTitle" placeholder="제목을 입력해주세요">
        </div>
        <div id="content">
            <label id="destination">목적지<select name="sido2" id="sido2"></select>
                <select name="gugun2" id="gugun2"></select></label>
            <label id="detailDestination">상세 목적지<input placeholder="상세 목적지를 입력해주세요 ex)코엑스" style="margin-left: 40px;" type="text" class="inputForm"></label>
        </div>
            <label id="price">사례금<input class="inputForm" style="margin-left: 90px;" type="text">&nbsp;코인 / <label id="myCoin" style="font-size: 15px;">현재 코인 : <span>0</span> 코인</label> </label>
            <span id="endDate">마감일
                <label><input style="margin-left:55px;" type="radio" name="end" value="1">1일</label>
                <label><input type="radio" name="end" value="3">3일</label>
                <label><input type="radio" name="end" value="7">1주</label>
                <label><input type="radio" name="end" value="14">2주</label>
                <label><input type="radio" name="end" value="30">한달</label>
                </span>
        <div id="editSection"></div>
    </form>
</div>
<div id="confirm">
    <button class="Explore" id="register">등록하기</button>
    <button class="Explore" id="cancel">취소하기</button>
</div>
<div id="footer">
    <div id="copyright">
        <p>상호명 : (주)에르메스 | 대표 : 샤넬 | 개인정보책임자 : 루이비똥</p>
        <p>사업자등록번호 : 201-54-10020 | 통신판매업신고번호 : 제 2018-서울관악-15411호</p>
        <p>주소 : 충청남도 아산시 신창면 순천향로 22, 멀티미디어관 6층 | 광고 및 제휴 : hsh2@sch.ac.kr</p>
        <br/>
        <p>Copyright 2018. HERMES. All rights reserved.</p>
    </div>
</div>
<script src="/js/jquery.js"></script>
<script src="/js/tui-code-snippet.min.js"></script>
<script src='/js/markdown-it.js'></script>
<script src="/js/to-mark.min.js"></script>
<script src="/js/codemirror.js"></script>
<script src="/js/highlight.js"></script>
<script src="/js/squire-raw.js"></script>
<script src="/js/tui-editor-Editor.js"></script>
<script src="/js/tui-date-picker.min.js"></script>
<script src="/js/writeEP.js"></script>
<script src="/js/chat.js"></script>
<script>
</script>
</body>
</html>
