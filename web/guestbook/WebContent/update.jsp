<%@page import="java.sql.Timestamp"%>
<%@page import="org.pjh.guestbook.vo.Guest"%>
<%@page import="org.pjh.guestbook.dao.GuestbookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

    //request.setCharacterEncoding("UTF-8");
    
	//넘어온 파라미터 no, writer, contents
    String no = request.getParameter("no");
    String writer = request.getParameter("writer");
	String contents = request.getParameter("contents");
	Guest guest = new Guest();
	guest.setNo(Integer.parseInt(no));
	guest.setWriter(writer);
	guest.setContents(contents);
	
	GuestbookDAO.update(guest);
	
	response.sendRedirect("index.jsp");
%>

