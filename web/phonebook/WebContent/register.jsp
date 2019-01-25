<%@page import="util.ResizeImageUtil"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@page import="com.bjd.phonebook.dao.PhonebookDAO"%>
<%@page import="com.bjd.phonebook.vo.Phone"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	// post방식의 한글처리는 필터로
	
	// 톰캣의 경로
	String root = application.getRealPath("");
	// upload폴더 경로
	String upload = root+"upload"+File.separator;
	// thumb폴더 경로
	String thumb = root+"thumb"+File.separator;
	// MultipartRequest를 이용
	MultipartRequest mr = new MultipartRequest(request,upload, 1024*1024*100,"UTF-8",new DefaultFileRenamePolicy());
	String name = mr.getParameter("name");
	String first = mr.getParameter("first");
	String second = mr.getParameter("second");
	String last = mr.getParameter("last");
	String year = mr.getParameter("year");
	String month = mr.getParameter("month");
	String date = mr.getParameter("date");
	String gender = mr.getParameter("gender");
	String profile = mr.getFilesystemName("profile");
	
	//썸네일 이미지 만들기
	ResizeImageUtil.resize(upload+profile, thumb+profile, 150);
	
	Date birthDate = Date.valueOf(year+"-"+month+"-"+date);
	
	Phone phone = new Phone();
	phone.setName(name);
	phone.setPhone(first+second+last);
	phone.setBirthDate(birthDate);
	phone.setGender(gender);
	phone.setProfile(profile);
	int result = PhonebookDAO.insert(phone);
	System.out.print(result);
	response.sendRedirect("index.jsp"); 

%>
