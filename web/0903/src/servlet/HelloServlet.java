package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * HttpServelt 클래스를 상속받으면 이 클래스도
 * 서블릿입니다.
 * 
 */

public class HelloServlet extends HttpServlet{
	
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
		out.println("<title>안녕하세요 ?</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>하이</h1>");
		out.println("</body>");
		out.println("</html>");
	}
}
