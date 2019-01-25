<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<%@ include file="/WEB-INF/template/link.jsp" %>
<link rel="stylesheet" href="/css/join.css" />
</head>
<body>
<div id="header">
    <h1><a href="/index.jsp"><img src="/img/logo.png" width="40"/><strong>ODEL1</strong> Board</a></h1>
</div>
<div id="content">
    <div class="aux">
     <h2 class="title"><i class="fas fa-hat-wizard"></i> 회원가입 폼</h2>
        <div id="joinBox">
            <form method="post" action="/join.jsp">
                <fieldset>
                    <legend class="screen_out">회원가입폼</legend>
                    <div class="row">
                        <label class="label" for="id">아이디</label>
                        <input id="id" name="id"
                               autocomplete="off"
                               placeholder="영어,숫자로 4~20자 입력"
                               title="영어,숫자로 4~20자 입력"
                               pattern="[\w]{4,20}"
                               required/>
                        <div class="msg id">아이디를 입력해주세요.</div>
                    </div><!--//row-->
                    <div class="row">
                        <label class="label" for="nickname">별 명</label>
                        <input id="nickname"
                               required pattern="[ㄱ-힣|0-9]{1,10}"
                               placeholder="10자 내로 한글,숫자 입력"
                               title="10자 내로 한글,숫자 입력"
                               name="nickname"/>
                        <div class="msg nickname ok">좋은 별명입니다.</div>
                    </div><!--//row-->
                    <div class="row">
                        <label class="label" for="pwd">비밀번호</label>
                        <input type="password" id="pwd"
                               required pattern="[\w]{4,32}"
                               placeholder="4~32자로 입력"
                               title="4~32자로 입력"
                               name="pwd"/>
                        <div class="msg pwd"></div>
                    </div><!--//row-->
                    <div class="row">
                        <label class="label" for="confirm">비밀번호 확인</label>
                        <input type="password" id="confirm"
                               pattern="[\w]{4,32}"
                               required placeholder="위와 동일하게 입력"
                               title="위와 동일하게 입력"/>
                        <div class="msg confirm"></div>
                    </div><!--//row-->
                    <div class="row">
                        <span class="label" for="birthDate">생년월일</span>
                        <p id="birthDate">
                            <label>
                                <input type="text" id="year" name="year"
                                       maxlength="4"
                                       title="태어난 년도를 입력"
                                       placeholder="년(4자리)"/></label>
                            <label>
                                <input type="text" id="month" name="month"
                                       maxlength="2"
                                       title="태어난 월을 입력"
                                       placeholder="월"/>
                            </label>
                            <label>
                                <input type="text" id="date"
                                       name="date"
                                       title="태어난 일을 입력"
                                       maxlength="2"
                                       placeholder="일"/>
                            </label>
                        </p>
                        <div class="msg birth"></div>
                    </div><!--//row-->
                    <div class="row" id="profileRow">
                        <span class="label">프로필사진</span>
                        <div id="profileBox" class="fas fa-user-circle no_image">
                        <img src="profile/jw.jpg" width="140" height="140" id="profileImg"/>
                        <label class="fas fa-camera">
                            <input type="file" name="profile" id="profile"/>
                        </label>
                            <button type="button" class="delete fas fa-times"><span class="screen_out">삭제</span></button>
                        </div><!-- //profileBox -->
                        <div class="msg profile">zz</div>
                    </div><!--//profileRow -->
                    <div class="box_btn">
                        <button class="btn" type="submit"><i class="fas fa-sign-in-alt"></i> 회원가입</button>
                        <button class="btn" type="reset"><i class="fas fa-redo"></i> 초기화</button>
                        <a class="btn" href="/index.jsp"><i class="far fa-list-alt"></i> index으로</a>
                    </div><!--//box_btn -->
                </fieldset>
            </form>
        </div><!--// joinBox -->
<%@ include file="/WEB-INF/template/footer.jsp" %>
<script src="js/jquery.js"></script>
<script src="js/fix-footer.js"></script>  
</body>
</html>