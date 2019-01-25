<%@page import="com.hermes.hanbakwi.vo.Region"%>
<%@page import="com.hermes.hanbakwi.vo.Activity"%>
<%@page import="com.hermes.hanbakwi.dao.RegionsDAO"%>
<%@page import="com.hermes.hanbakwi.dao.ActivitiesDAO"%>
<%@page import="com.hermes.hanbakwi.vo.User"%>
<%@page import="com.hermes.hanbakwi.dao.UsersDAO"%>
<%@page import="java.sql.Date"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	// post방식의 한글처리는 필터로
	
// 넘어온 파라미터 
	String profileImg = request.getParameter("profile");
	String id = request.getParameter("id");
	String nickname = request.getParameter("nickname");
	String password = request.getParameter("password");
	String email1 = request.getParameter("str_email01");
	String email2 = request.getParameter("selectEmail");
	String gender = request.getParameter("gender");
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String date = request.getParameter("date");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String phoneNumber = phone1+"-"+phone2+"-"+phone3;
	String sido = request.getParameter("sido");
	String gugun = request.getParameter("gugun");
	
	String uTier = "B";
	String email = email1+"@"+email2;	
	Date birthDate = Date.valueOf(year+"-"+month+"-"+date);
	User user = new User();
	
	user.setId(id);
	user.setPassword(password);
	user.setNickname(nickname);
	user.setBirthDate(birthDate);
	user.setProfileImg(profileImg);
	user.setGender(gender);
	user.setuTier(uTier);
	user.setEmail(email);
	
	
	System.out.println(user);
	
	int result = UsersDAO.insert(user);
		
	if(result==1) {
		session.setAttribute("msg", "회원가입을 축하합니다.");
		
		int userNo = user.getuNo();
		
		String[] guguns = request.getParameterValues("gugun");
	
		for(String gugunlist : guguns) {
			
			int rgNo = RegionsDAO.selectRegion(gugunlist);
			System.out.println(rgNo);		
			
			Activity activity = new Activity();
			activity.setuNo(userNo);
			activity.setRgNo(rgNo);
			ActivitiesDAO.insertActivities(activity);
		}
			
	}//if end
		
	System.out.println(result);
	
	response.sendRedirect("index.jsp");

%>
