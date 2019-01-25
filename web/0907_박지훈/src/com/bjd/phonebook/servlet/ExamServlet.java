package com.bjd.phonebook.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ExamServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//컨텐트 타입을 지정
		resp.setContentType("text/html; charset=UTF-8"); 
		
		// 응답에 출력 할 객체
		PrintWriter out = resp.getWriter();
		
		out.println("<!DOCTYPE html>");
		out.println("<html lang='ko'>");
		out.println("<head>");
		out.println("<meta charset='UTF-8/'>");
		out.println("<title>헬로 서블릿</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>안녕하세요?</h1>");
		out.println("<a href=\"index.jsp\">메인 페이지로</a>");
		out.println("<p></p>");
		out.println("<a href="+"'increase.jsp'"+">방문 횟수 확인</a>");		
		out.println("</body>");
		out.println("</html>");
	}
}
