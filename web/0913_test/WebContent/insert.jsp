<%@page import="com.bjd.book.dao.BookDAO"%>
<%@page import="com.bjd.book.vo.Book"%>
<%@page import="java.sql.Date"%>
<%@page import="util.ResizeImageUtil"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


	//톰캣의 경로
	String root = application.getRealPath("");
	// upload폴더 경로
	String upload = root+"upload"+File.separator;
	// thumb폴더 경로
	String thumb = root+"thumb"+File.separator;
	// MultipartRequest를 이용
	MultipartRequest mr = new MultipartRequest(request,upload, 1024*1024*100,"UTF-8",new DefaultFileRenamePolicy());
	String title = mr.getParameter("title");
	String author = mr.getParameter("author");
	String year = mr.getParameter("year");
	String month = mr.getParameter("month");
	String date = mr.getParameter("date");
	String image = mr.getFilesystemName("image");
	
	//썸네일 이미지 만들기
	ResizeImageUtil.resize(upload+image, thumb+image, 200,300);
	Date publicationDate = Date.valueOf(year+"-"+month+"-"+date);
	
	Book book = new Book();
	book.setTitle(title);
	book.setAuthor(author);
	book.setPublicationDate(publicationDate);
	book.setImage(image);
	BookDAO.insert(book);
	response.sendRedirect("index.jsp");
%>