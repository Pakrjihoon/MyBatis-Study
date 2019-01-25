package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LifeCycleServlet extends HttpServlet{
	
	/*
	 * 서블릿은 Server + Applet의 줄임말로
	 * 서버에서 작동되는 자바애플리케이션 입니다.
	 * 
	 * 서블릿은 자바코드에 HTML을 삽입하는 형태로
	 * 불편한 점이 많습니다.
	 * (그래서, JSP가 있습니다.)
	 * 
	 * 서블릿의 생명주기
	 * 1) 생성자 호출 : 객체 생성
	 * 2) init 메서드 : 초기화
	 * 3) service 메서드 : 서비스 -> doGet, doPost를 호출
	 * 4) destroy 메서드 : 죽음
	 * 
	 */
	public LifeCycleServlet() {
		System.out.println("생성자 호출");
	} // LifeCycleServlet() end
	
	@Override
	public void init() throws ServletException {
		System.out.println("초기화");
	} // init() end
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("서비스!");
	} // service() end
	@Override
	public void destroy() {
		System.out.println("죽었습니다.");
	} // destroy() end
	
} //LifeCycleServlet end 
