package org.bjd.model1.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.bjd.model1.vo.Member;
@WebFilter(value= {
		"/writeForm.jsp",
		"/write.jsp",
		"/delete.jsp",
		"/updateForm.jsp",
		"/update.jsp",
		"/ajax/like.jsp"})
public class LoginCheckFilter implements Filter {

	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		//세션
		HttpSession session = ((HttpServletRequest)request).getSession();
		//세션에서 loginMember 얻기
		Member loginMember =  (Member)session.getAttribute("loginMember");
		
		//만약 loginMember이 null이면
		if(loginMember==null) {
			//로그인 안되엇으니까 indexx.jsp로 이동
			((HttpServletResponse)response).sendRedirect("/index.jsp");
		}else {
			chain.doFilter(request, response);
		}//if~else end
		
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("LoginCheckFilter init");
	}

}
