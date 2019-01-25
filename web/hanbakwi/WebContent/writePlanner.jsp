<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>대리 여행 계획 신청하기</title>
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/tui-editor.min.css">
    <link rel="stylesheet" href="/css/tui-editor-contents.min.css" />
    <link rel="stylesheet" href="/css/tui-date-picker.css">
    <link rel="stylesheet" href="/css/default.css">
    <link rel="stylesheet" href="/css/header.css">
    <link rel="stylesheet" href="/css/writeEP.css">
    <link rel="icon" href="/img/favicon-96x96.png">
    <link rel="stylesheet" href="css/footer.css">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
    <style>
        #start,#destination,#budget,#person ,#price, #endDate{
            display: block;
            margin: 20px 0;
        }
        #date {
            width: 150px;
            height: 30px;
            float: left;
            margin-bottom: 20px;
        }

        #logoImage {
            background-image: url("/img/로고.png");
        }
        .plannerBtn {
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
        .plannerBtn:hover {
            background-color: #40BEED;
            color: #fff;
        }
        #sido1,#sido2,#gugun1,#gugun2 {
            width: 150px;
            height: 30px;
            font-size: 20px;
            border-radius: 5px;
            border: 1px solid #d0d0d0;
            margin-left: 90px;
        }
        #gugun1,#gugun2 {
            margin-left: 20px;
        }
        .row {
            float: left;
            width: 180px;
            height:30px;
            position: relative;
            text-indent: 0;
            z-index: 2;
            margin-bottom: 20px;
            margin-left: 50px;
        }
        #dumb {
            display: block;
            float: left;
            width: 30px;
            height: 30px;
        }
        #dateForm {
            width: 100%;
            height: 30px;
        }
        #endDate>label {
            margin-left: 30px;
        }
        #datepicker-input1, #datepicker-input2 {
            border: 1px solid #d0d0d0;
            border-radius: 5px;
        }
        .tui-datepicker-input {
            border: none;
        }
        #dumb {
            width: 30px;
            height: 30px;
            display: block;
            font-size: 20px;
            float: left;
            font-weight: bold;
            line-height: 25px;
            text-indent: 7px;
        }
        .row2 {
            margin-left:10px;
        }
    </style>
</head>
<body>
<%@include file="/WEB-INF/template/header.jsp" %>
<div id="wrap">
    <form action="" method="post">
        <h2 id="planner">여행 계획 대리 신청</h2>
        <div id="title">
            <label for="plannerTitle" style="font-size: 20px">제목</label>
            <input type="text" id="plannerTitle" placeholder="제목을 입력해주세요">
        </div>
        <div id="content">
            <label id="start">출발지<select name="sido1" id="sido1"></select>
                <select name="gugun1" id="gugun1"></select></label>
            <label id="destination">목적지<select name="sido2" id="sido2"></select>
                <select name="gugun2" id="gugun2"></select></label>
            <div id="dateForm">
                <div id="date">여행 기간</div>
                <div class="row">
                    <div class="tui-datepicker-input tui-datetime-input tui-has-focus">
                        <input type="text" id="datepicker-input1" aria-label="Date-Time">
                        <span class="tui-ico-date"></span>
                    </div>
                    <div id="wrapper1" style="margin-top: -1px;"></div>
                </div>
                <div id="dumb">~</div>
                <div class="row row2">
                    <div class="tui-datepicker-input tui-datetime-input tui-has-focus">
                        <input type="text" id="datepicker-input2" aria-label="Date-Time">
                        <span class="tui-ico-date"></span>
                    </div>
                    <div id="wrapper2" style="margin-top: -1px;"></div>
                </div>
            </div>
            <label id="budget">여행 예산<input class="inputForm" type="text">&nbsp;원</label>
            <label id="person">인원<input style="margin-left: 110px;" class="inputForm" type="number"></label>
            <label id="price">사례금<input class="inputForm" style="margin-left: 90px;" type="text">&nbsp;코인 / <label
                    id="myCoin" style="font-size: 15px;">현재 코인 : <span>0</span> 코인</label> </label>
            <span id="endDate">마감일
                <label><input style="margin-left:55px;" type="radio" name="end" value="1">1일</label>
                <label><input type="radio" name="end" value="3">3일</label>
                <label><input type="radio" name="end" value="7">1주</label>
                <label><input type="radio" name="end" value="14">2주</label>
                <label><input type="radio" name="end" value="30">한달</label>
                </span>
        </div>
        <div id="editSection"></div>
    </form>
</div>
<div id="confirm">
    <button class="plannerBtn" id="register">등록하기</button>
    <button class="plannerBtn" id="cancel">취소하기</button>
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
<script src="/js/fix-footer.js"></script>
<script src="/js/writeEP.js"></script>
<script src="/js/chat.js"></script>
<script>
</script>
</body>
</html>
