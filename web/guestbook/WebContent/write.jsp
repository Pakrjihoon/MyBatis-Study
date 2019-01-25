<%@page import="org.pjh.guestbook.vo.Guest"%>
<%@page import="org.pjh.guestbook.dao.GuestbookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	// post 방식의 한글처리
	//request.setCharacterEncoding("UTF-8");
	// EncodingFilter가 post방식의 한글처리 해줌

	//파라미터 받기
	String writer = request.getParameter("writer");
	String contents = request.getParameter("contents");
	
	//ip 얻기
	String ip = request.getRemoteAddr();
	
	Guest guest = new Guest();
	guest.setWriter(writer);
	guest.setContents(contents);
	guest.setIp(ip);
	
	int result = GuestbookDAO.insert(guest);
	System.out.print(result);
	response.sendRedirect("index.jsp");

%>