<%@page import="util.ResizeImageUtil"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//기본 WAS 경로
	String root = request.getServletContext().getRealPath("");

	//원본 파일 경로
	String uploadPath = root + "upload" + File.separator;
	
	//프로필 사진 모아놓는 경로
	String profilePath = root + "profile" + File.separator;
	
	System.out.println(root);
	System.out.println(uploadPath);
	System.out.println(profilePath);
	
	MultipartRequest mr = new MultipartRequest(request,//요청객체
			uploadPath,//원본파일 업로드경로
			1024*1024*100,//파일 사이즈(100메가) 
			"UTF-8",//한글처리 인코딩
			new DefaultFileRenamePolicy());//중복된 파일이름 어떻게 처리하는지 객체
			
	//파일 이름 얻기
	String fileName = mr.getFilesystemName("profile");
	System.out.println(fileName);
	// ResizeImage 유틸을 이용해서 profile폴더에 짤라서 넣고
	// 그 이름을 리턴하면 된다.
	ResizeImageUtil.resize(uploadPath+fileName,
			profilePath+fileName, 140);
%>
{"src":"/profile/<%=fileName%>"}