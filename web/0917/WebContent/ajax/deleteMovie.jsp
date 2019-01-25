<%@page import="dao.MoviesDAO"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	//넘어온 파라미터 받기
	String noStr = request.getParameter("no");

	int no = Integer.parseInt(noStr);
	
	int result = MoviesDAO.delete(no);
	
	// 결과를 json으로 넘겨주어야한다.
%>
{"result" : <%=result==1 %>}
