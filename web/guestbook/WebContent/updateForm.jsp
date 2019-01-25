<%@page import="org.pjh.guestbook.dao.GuestbookDAO"%>
<%@page import="org.pjh.guestbook.vo.Guest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String noStr = request.getParameter("no");
int no = Integer.parseInt(noStr);
Guest guest = GuestbookDAO.selectOne(no);
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title> Park ji hoon 방명록</title>
    <%@ include file="/WEB-INF/template/link.jsp"%>
    <style>

        #formBox label {
            font-size: 26px;
            color: #424242;
        }
        #formBox input,
        #formBox textarea {
            font-family: 'Jua', sans-serif;
            font-size: 26px;
            padding: 10px;
            width: 650px;
            border: 2px solid #dadada;
            outline: none;
        }
        #formBox textarea {
            /* textarea의 크기변경 막기*/
            resize: none;
            height: 400px;
            vertical-align: top;
            width: 652px;
        }
        #formBox .row {
            margin: 30px 0;
        }
        #formBox input:focus,
        #formBox textarea:focus {
            border-color: #979797;
        }
        .box_btn {
            text-align: center;
        }
    </style>
</head>
<body>
<%@ include file="/WEB-INF/template/header.jsp"%>
    <h2>
        <i class="fas fa-highlighter"></i>
        방명록 수정하기
    </h2>
    <div id="formBox">
        <form id ="form" method="post" action="update.jsp">
            <fieldset>
            <input type="hidden" name="no" value = "<%=guest.getNo()%>">
                <legend class="screen_out">글쓰기폼</legend>
                <div class="row">
                    <label for="writer">이름</label>
                    <input id="writer" name="writer" placeholder="당신의 이름을 입력하세요" value="<%=guest.getWriter()%>">
                </div>
                <div class="row">
                    <label for="contents">내용</label>
                    <textarea id="contents" name="contents" placeholder="내용을 입력하세요"><%=guest.getContents()%></textarea>
                </div>
                <div class="box_btn">
                    <a href="index.jsp" class="btn"><i class="fas fa-undo-alt"></i> 취소</a>
                    <button class="btn"><i class="fas fa-check"></i> 수정하기</button>
                </div>
            </fieldset>
        </form>
    </div>
<%@ include file="/WEB-INF/template/footer.jsp"%>
<script src="js/jquery.js"></script>
<script>
</script>
</body>
</html>