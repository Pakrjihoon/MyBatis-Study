<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String id = request.getParameter("group_id");
Class.forName("oracle.jdbc.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:xe";
Connection conn = DriverManager.getConnection(url,"test","1111");
Statement stmt = conn.createStatement();
String sql = "DELETE FROM groups WHERE group_id ="+id;
stmt.executeUpdate(sql);

response.sendRedirect("groups.jsp");

stmt.close();
conn.close();
%>