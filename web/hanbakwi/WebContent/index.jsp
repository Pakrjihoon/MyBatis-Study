<%@page import="com.hermes.hanbakwi.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	User loginUser = (User)session.getAttribute("loginUser");    
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>메인페이지|한바퀴</title>
    <%@include file="/WEB-INF/template/indexLink.jsp" %>
    <style>
        body *{
            font-family: 'Noto Sans KR', sans-serif;
        }
        #header {
            background-image: url("/img/hero_image.jpg");
        }
        #logoImage {
            background-image: url("/img/로고.png");
        }
        #copyright {
            text-align: center;
        }
    </style>
</head>
<body>
<div id="header">
    <div id="menu">
        <a href="index.jsp"><div id="logoImage"></div></a>
        <div id="menuBar">
            <ul>
                <li id="fundingMenu"><a href="fundingMain.jsp">여행 펀딩</a></li>
                <li id="siteMenu"><a href="allSight.jsp">명소 +</a></li>
                <li id="journalMenu"><a href="">여행기</a></li>
                <li id="requestMenu"><a href="locals.jsp">사전 답사/대리플래너</a></li>
                <li id="chatMenu"><a href="" onclick=openChatPop()>LIVE! 현장상황</a></li>
                <li id="roomsMenu"><a href="contentRoom.jsp">숙소</a></li>
                <li id="diningMenu"><a href="contentFood.jsp">식당</a></li>
                <li id="cultureMenu"><a href="contentCulture.jsp">관광</a></li>
            </ul>
        </div>
        <%if(loginUser !=null) { %>
        <div id="profileBox">
            <img id="profileImage" src="/profile/<%=loginUser.getProfileImg()%>"
            alt="<%=loginUser.getNickname()%>"/>
            <div id="personalMenu">
                <ul>
                    <li><a href="/myPage.jsp?no=<%=loginUser.getuNo()%>">마이페이지</a></li>
                    <li><a href="">알림</a></li>
                    <li><a href="">메시지함</a></li>
                    <li><a href="">코인</a></li>
                    <li><a href="">회원정보 수정</a></li>
                    <li><a href="/logout.jsp">로그아웃</a></li>
                </ul>
            </div>
        </div>
        <%} else { %>
        <a id="login" href="">로그인</a>
        <%} %>
    </div>
    <div id="searchForm">
        <form>
            <fieldset>
                <legend class="screen_out">일정검색폼</legend>
                <select id="area" name="area">
                        <option value="000">전체</option>
                        <option value="02">서울 </option>
                        <option value="031">경기 </option>
                        <option value="032">인천</option>
                        <option value="033">강원 </option>
                        <option value="041">충남 </option>
                        <option value="042">대전 </option>
                        <option value="043">충북 </option>
                        <option value="051">부산 </option>
                        <option value="052">울산 </option>
                        <option value="053">대구 </option>
                        <option value="054">경북 </option>
                        <option value="054">경북 </option>
                        <option value="055">경남 </option>
                        <option value="061">전남 </option>
                        <option value="062">광주 </option>
                        <option value="063">전북 </option>
                        <option value="064">제주 </option>
                </select>
                <div id="date">
                    <div class="tui-datepicker-input tui-datetime-input tui-has-focus">
                        <input id="startpicker-input" type="text" aria-label="Date">
                        <span class="tui-ico-date"></span>
                        <div id="startpicker-container" style="margin-left: -1px;"></div>
                    </div>
                    <div class="tui-datepicker-input tui-datetime-input tui-has-focus">
                        <input id="endpicker-input" type="text" aria-label="Date">
                        <span class="tui-ico-date"></span>
                        <div id="endpicker-container" style="margin-left: -1px;"></div>
                    </div>
                </div>
                <button id="searchBtn">여행기 검색</button>
            </fieldset>
        </form>
    </div>
</div>
<div id="popup"></div>
<div id="loginForm" class="form">
    <h1><i class="fas fa-user"></i>로그인</h1>
    <form action="/login.jsp" method="post">
        <fieldset>
            <legend class="screen_out">로그인폼</legend>
            <label>아이디</label><br/>
            <input type="text" name="id"/><br/>
            <label>비밀번호</label><br/>
            <input type="password" name="password"/><br/>
            <button id="loginBtn" class="btn" type="submit">로그인</button>
            <button id="registerBtn" class="btn" type="button">회원가입</button>
        </fieldset>
    </form>
    <a id="find" href="">아이디/비밀번호 찾기</a>
</div>
<div id="findForm" class="form">
    <div class="tab">
        <a id="findIDBtn" class="on" href="">아이디 찾기</a>
        <a id="findPWBtn" href="">비밀번호 변경</a>
    </div>
    <form id="findID" action="" method="get">
        <fieldset>
            <legend class="screen_out">아이디찾기폼</legend>
            <label>이메일</label><br/>
            <input type="text" name="e-mail"/><br/>
            <button type="submit" id="findBtn" class="btn">찾기</button>
            <span>당신의 아이디는 :  입니다.</span>
        </fieldset>
    </form>
            <button class="return btn">로그인으로 되돌아가기</button>
    <form id="findPW">
        <fieldset>
            <legend class="screen_out">비밀번호변경폼</legend>
            <label>아이디</label><br/>
            <input/><br/>
            <label>이메일</label><br/>
            <input/><br/>
            <button class="change btn">비밀번호 변경하기</button>
            <button class="return btn">로그인으로 되돌아가기</button>
        </fieldset>
    </form>
</div>
<div id="chanePWForm" class="form">
    <form>
        <fieldset>
            <legend class="screen_out">비밀번호재설정폼</legend>
            <label>새로운 비밀번호</label><br/>
            <input/><br/>
            <label>새로운 비밀번호 확인</label><br/>
            <input/><br/>
            <button class="change btn">변경하기</button>
            <button class="return btn">로그인으로 되돌아가기</button>
        </fieldset>
    </form>
</div>
<div id="content">
    <div id="introWrap">
        <div  class="wrap">
            <div id="journal" class="nav">
                <h2>BEST<br>여행기</h2>
                <a href="">+더보기</a>
            </div>
            <div id="journalList" class="card_list">
                <div class="card left">
                    <img src="img/thumbnail.jpg" class="thumbnail"/>
                    <div class="info_box">
                        <h3>친구들과 바닷가로~</h3>
                        <p>지훈</p>
                        <p><i class="far fa-heart"></i>250</p>
                    </div>
                </div>
                <div class="card">
                    <img src="img/thumbnail.jpg" class="thumbnail"/>
                    <div class="info_box">
                        <h3>친구들과 바닷가로~</h3>
                        <p>지훈</p>
                        <p><i class="far fa-heart"></i>250</p>
                    </div>
                </div>
                <div class="card right">
                    <img src="img/thumbnail.jpg" class="thumbnail"/>
                    <div class="info_box">
                        <h3>친구들과 바닷가로~</h3>
                        <p>지훈</p>
                        <p><i class="far fa-heart"></i>250</p>
                    </div>
                </div>
            </div>
        </div>
        <div  class="wrap">
            <div id="explore" class="nav">
                <h2>새로 올라온<br>사전답사</h2>
                <a href="">+더보기</a>
            </div>
            <div id="exploreList" class="list">
                <ul class="post_list">
                    <li>1</li>
                    <li>2</li>
                    <li>3</li>
                    <li>4</li>
                    <li>5</li>
                </ul>
            </div>
            <div id="planner" class="nav">
                <h2>새로 올라온<br>대리플래너</h2>
                <a href="">+더보기</a>
            </div>
            <div id="plannerList" class="list">
                <ul class="post_list">
                    <li>1</li>
                    <li>2</li>
                    <li>3</li>
                    <li>4</li>
                    <li>5</li>
                </ul>
            </div>
        </div>
        <div class="wrap">
            <div id="funding" class="nav">
                <h2>새로 올라온<br>여행 펀딩</h2>
                <a href="">+더보기</a>
            </div>
            <div id="fundingList" class="card_list">
                <div class="card left">
                    <img class="thumbnail" src="img/thumbnail.jpg" alt="자전거"/>
                    <div class="info_box">
                        <h3>인제의 모든 수상 레저</h3>
                        <h4>여행요약</h4>
                        <p>프로필<em>티어</em></p>
                        <p>78,000원</i><em>(12%)</em><span><i class="far fa-calendar-alt"></i><em>D-7</em></span></p>
                    </div>
                </div>
                <div class="card">
                    <img class="thumbnail" src="img/thumbnail.jpg" alt="자전거"/>
                    <div class="info_box">
                        <h3>인제의 모든 수상 레저</h3>
                        <h4>여행요약</h4>
                        <p>프로필<em>티어</em></p>
                        <p>78,000원</i><em>(12%)</em><span><i class="far fa-calendar-alt"></i><em>D-7</em></span></p>
                    </div>
                </div>
                <div class="card right">
                    <img class="thumbnail" src="img/thumbnail.jpg" alt="자전거"/>
                    <div class="info_box">
                        <h3>인제의 모든 수상 레저</h3>
                        <h4>여행요약</h4>
                        <p>프로필<em>티어</em></p>
                        <p>78,000원</i><em>(12%)</em><span><i class="far fa-calendar-alt"></i><em>D-7</em></span></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="bestFD">
        <h2>BEST FD</h2>
        <div id="boxWrap">
            <div id="fdBox">
                <ul id="bestFDList">
                    <script type="text/template" id="bestFDTmpl">
                        <li class="item_fd">
                            <a href=""><img  src="img/cat.jpg"/></a>
                            <h4>하정우</h4>
                            <p>경기도/시흥시</p>
                            <p>3.9</p>
                        </li>
                    </script>
                </ul>
            </div>
        </div>
        <button id="prevBtn"><i class="fas fa-angle-left"></i></button>
        <button id="postBtn"><i class="fas fa-angle-right"></i></button>
    </div>
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
<script src="js/jquery.js"></script>
<script src="js/tui-code-snippet.min.js"></script>
<script src="js/tui-date-picker.min.js"></script>
<script src="js/underscore-min.js"></script>
<script src="js/chat.js"></script>
<script>
    var $popup=$("#popup");
    var $loginForm=$("#loginForm");
    var $findForm=$("#findForm");

    var today = new Date();
    var picker = tui.DatePicker.createRangePicker({
        startpicker: {
            date: today,
            input: '#startpicker-input',
            container: '#startpicker-container'
        },
        endpicker: {
            date: today,
            input: '#endpicker-input',
            container: '#endpicker-container'
        },
        language:'ko'
    });

    $("#login").click(function(e) {
        e.preventDefault();
        $popup.show();
        $loginForm.show();
    });

    $popup.click(function(e) {
        e.preventDefault();
        $(this).hide();
        $(".form").hide();
    });

    $("#find").click(function(e) {
        e.preventDefault();
        $loginForm.hide();
        $findForm.show();
    });

    $(".tab a").click(function () {
        $(".on").removeClass("on");
        $(this).addClass("on");
    });

    $("#findIDBtn").click(function (e) {
        e.preventDefault();
        $("#findID").show();
        $("#findPW").hide();
    });

    $("#findPWBtn").click(function (e) {
        e.preventDefault();
        $("#findPW").show();
        $("#findID").hide();
    });

    $(".change").click(function (e) {
        e.preventDefault();
        $findForm.hide();
        $("#chanePWForm").show();
    });

    $(".return").click(function (e) {
        e.preventDefault();
        $(".form").hide();
        $("#loginForm").show();
    });

    $("#profileImage").click(function () {
        $("#personalMenu").show();
        return false;
    });
    $(document).click(function () {
        $("#personalMenu").hide();
    });

    var tmp=_.template($("#bestFDTmpl").html());
    for(var i=0;i<8;i++){
        $("#bestFDList").append(tmp);
    };

    var x=0;
    $("#prevBtn").click(function () {
        x-=230;
        if(x==-1150){
            x=0;
        }
        $("#fdBox").css("left",x);
    });
    $("#postBtn").click(function () {
    	  x+=230;
        if(x==230){
            x=-920;
        }
        $("#fdBox").css("left",x);
    });
    $("#registerBtn").click(function() {
		location.href="/registerForm.jsp";
	});
</script>
</body>
</html>