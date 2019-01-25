package filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/*
 * Filter를 구현해야 Filter 
 */

public class TestFilter1 implements Filter{

	@Override
	public void destroy() {
		System.out.println("TestFilter1의 destroy()");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("TestFilter1의 전처리!");	
		
		response.setContentType("text/html; charset=UTF-8"); 
		PrintWriter out = response.getWriter();
		out.println("test1 before");
		
		//index.jsp를 실행
		chain.doFilter(request, response);
		out.print("test1 after");
		System.out.println("TestFilter1의 후처리!");
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("TestFilter1의 init()");
	}
	
}
