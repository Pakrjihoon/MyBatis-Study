<%@page import="util.ResizeImageUtil"%>
<%@page import="com.oreilly.servlet.multipart.FileRenamePolicy"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// multipart/form-data로 넘기면 우리가 하는 방식
// request.getParameter()로 처리 불가
// 편리하게 라이브러리를 활용 : cos 라이브러리 활용

/*
	MultipartRequest(request객체,
					 파일업로드할 경로,
					 업로드할 최대 용량,
				 	 인코딩방식,
					 FileRenamePolicy 객체)
*/

	//톰캣의 경로
	String path = application.getRealPath("");
	
	//파일 업로드 폴더의 경로
	// File.separator 사용이유 : 각 OS마다 폴더를 나누는 기호가 다름( 경로 표기법이 다름 )
	String uploadPath = path+"upload"+File.separator;
	
	// 파일 사이즈 (100Mb)
	int size = 1024 * 1024 * 100; 
	
	// DefaultFileRenamePolicy는 test.jpg / test1.jpg / test2.jpg
	FileRenamePolicy frp = new DefaultFileRenamePolicy();
	
	// 인코딩 방식
	String encoding = "UTF-8";
	
	MultipartRequest mr = new MultipartRequest(request, uploadPath, size, encoding ,frp);
	
	// request 객체가 아니라 mr 객체
	String id = mr.getParameter("id");
	String pwd = mr.getParameter("pwd");
	
	// 파일 이름
	String profile = mr.getFilesystemName("profile");
	
	// 썸네일 이미지 만들기
	// 이름까지
	String thumb = path+"thumb" + File.separator + profile;
	// resize(원본파일,타겟파일,사이즈)
	ResizeImageUtil.resize(uploadPath+profile, thumb, 200);
%>
아이디 :<%=id %> <br/>
비밀번호 :<%=pwd %> <br/>
<h2>썸네일</h2>
<img src="thumb/<%=profile%>"/>
<h2>원본</h2>
<img src="upload/<%=profile %>"/>