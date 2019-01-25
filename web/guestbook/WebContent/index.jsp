<%@page import="org.pjh.guestbook.util.PaginateUtil"%>
<%@page import="org.pjh.guestbook.vo.PageVO"%>
<%@page import="org.pjh.guestbook.vo.Guest"%>
<%@page import="java.util.List"%>
<%@page import="org.pjh.guestbook.dao.GuestbookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
		String pageNoStr = request.getParameter("page");
		//현재 페이지 번호 : pageNo 
		int pageNo = 1;
		if (pageNoStr!=null) {
			pageNo = Integer.parseInt(pageNoStr);
		}

		//한 페이지당 보여지는 게시물 수 : numPage
		int numPage = 3;
				
		PageVO pageVO = new PageVO(pageNo, numPage);
	
    	List<Guest> list = GuestbookDAO.selectList(pageVO);
		
		// 유저의 ip를 얻어옴
		String ip = request.getRemoteAddr();
		
		// 페이징을 위한 코드
		// 전체 게시물 수
		int total = GuestbookDAO.selectTotal();
		// 한 페이지에 보여질 블록갯수
		int numBlock = 3;
		// 주소 
		String url = "index.jsp";
		// 파라미터
		String param = "page=";
		String paginate = PaginateUtil.getPaginate(pageNo, total, numPage, numBlock, url, param);
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title> Park ji hoon 방명록</title>
    <%@ include file="/WEB-INF/template/link.jsp"%>
    <style>
        #noGuest {
            width: 798px;
            height: 300px;
            text-align: center;
            font-size: 35px;
            font-family: 'Poor Story',cursive ;
            line-height: 300px;
            border: 1px solid #dedede;
            margin: 20px 0 ;
        }
        #guestList {
			
        }

        #guestList li {
            border: 1px solid #dedede;
            width: 798px;
            min-height: 200px;
            margin: 10px 0;
            box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
            position: relative;
        }
        .guest a{
            position: absolute;
            font-size: 26px;
            color: #424242;
            left: 20px;
            top: 20px;
            text-decoration: none;
        }
        .delete {
            position: absolute;
            right: 10px;
            top: 10px;
        }
        .update {
            position: absolute;
            right: 100px;
            top: 10px;
        }
        .regdate {
            position: absolute;
            left: 20px;
            top: 50px;
            color: #424242;
        }
        .content {
            font-size: 18px;
            position: relative;
            margin-top:80px;
            padding: 20px;
            text-align: justify;
            white-space: pre-wrap; /* presentation의 줄임말로 enter 값이 먹힌다.*/
            word-break: break-all;
            
        }
 		body {
 			opacity : .95;
 		}
    </style>
</head>
<body>
    <%@ include file="/WEB-INF/template/header.jsp"%>
        <h2><i class="fas fa-clipboard-list"></i> 방명록 리스트</h2>
        <%if(list.isEmpty()) { %>
        <div id="noGuest">방명록이 존재하지 않습니다.</div>
		<% } %>
        <ul id="guestList" >
        <%for(Guest guest : list) { 
        	String contents = guest.getContents();
        	contents = contents.replaceAll("<", "&lt;");
        	contents = contents.replaceAll(">", "&gt;");
        %>
            <li>
                <h3 class="guest">
                    <a href="http://<%=guest.getIp()%>"><i class="fas fa-user-alt"></i><%=guest.getWriter() %></a>
                </h3>
                <time class="regdate"><i class="far fa-clock"></i><%=guest.getRegDate() %></time>
                <%if(ip.equals("192.168.0.49")) { %>
                <a class="btn update" href="updateForm.jsp?no=<%=guest.getNo()%>"><i class="far fa-edit"></i> 수정</a>
                <a class="btn delete" href="delete.jsp?no=<%=guest.getNo()%>"><i class="far fa-trash-alt"></i> 삭제</a>
                <%} %>
                <p class="content" ><%=contents%></p>
            </li>
            <%}%>
        </ul>
        <%-- 
        <div>
        	<a href="index.jsp?page=1">1</a>
        	<a href="index.jsp?page=2">2</a>
        	<a href="index.jsp?page=3">3</a>
        	<a href="index.jsp?page=4">4</a>
        </div>
        --%>
        <%=paginate %>
        <div class="box_btn">
            <a class="btn" href="writeform.jsp"><i class="fas fa-pencil-alt"></i>글쓰기</a>
        </div>
<%@ include file="/WEB-INF/template/footer.jsp"%>
</body>
</html>