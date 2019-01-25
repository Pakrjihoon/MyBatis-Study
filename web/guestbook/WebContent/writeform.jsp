<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        방명록 글쓰기
    </h2>
    <div id="formBox">
        <form method="post" action="write.jsp">
            <fieldset>
                <legend class="screen_out">글쓰기폼</legend>
                <div class="row">
                    <label for="writer">이름</label>
                    <input id="writer" name="writer" placeholder="당신의 이름을 입력하세요">
                </div>
                <div class="row">
                    <label for="contents">내용</label>
                    <textarea id="contents" name="contents" placeholder="내용을 입력하세요"></textarea>
                </div>
                <div class="box_btn">
                    <a href="index.jsp" class="btn"><i class="fas fa-undo-alt"></i> 취소</a>
                    <button class="btn"><i class="fas fa-check"></i> 글쓰기</button>
                </div>
            </fieldset>
        </form>
    </div>
<%@ include file="/WEB-INF/template/footer.jsp"%>

</body>
</html>