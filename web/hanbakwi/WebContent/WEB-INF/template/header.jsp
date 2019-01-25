<%@page import="com.hermes.hanbakwi.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	User loginUser = (User)session.getAttribute("loginUser");
%>    
    
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
                    <li><a href="/myPage.jsp?no="+<%=loginUser.getuNo()%>>마이페이지</a></li>
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
    <form id="findID">
        <fieldset>
            <legend class="screen_out">아이디찾기폼</legend>
            <label>이메일</label><br/>
            <input/><br/>
            <button id="findBtn" class="btn">찾기</button>
            <button class="return btn">로그인으로 되돌아가기</button>
        </fieldset>
    </form>
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