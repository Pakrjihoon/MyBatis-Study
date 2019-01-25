<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 넘어오는 파라미터를 얻기
	// 파라미터는 무조건 자료형이 객체자료형 String 형이다.
	
	String no = request.getParameter("no");
	
	//HTML에 출력
	// out.print(no);
	//콘솔에 출력 
	// System.out.println(no);
	
	Class.forName("oracle.jdbc.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	Connection conn = DriverManager.getConnection(url,"test","1111");
	Statement stmt = conn.createStatement();
	String sql = "DELETE FROM genres WHERE no = "+no;
	stmt.executeUpdate(sql);
	
	
	// none-view
	/*
	입력, 수정, 삭제하는 페이지들은
	눈에 보여지는 페이지가 아닙니다.
	그래서 none-view 페이지라고 합니다.
	(HTML태그 모두 지움)
	
	get 방식에서 넘겨주는 페이지에서 파라미터를 얻어온다
	(쿼리스트링 이용)
	*/
	
	// 다시 genres.jsp로 이동을 하기 위하여
	// 리다이렉트 방식의 페이지 이동
	response.sendRedirect("genres.jsp");
	stmt.close();
	conn.close();

%> 