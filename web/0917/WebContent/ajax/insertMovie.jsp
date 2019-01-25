<%@page import="vo.Movie"%>
<%@page import="dao.MoviesDAO"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String relDate = request.getParameter("releaseDate");
	String enDate = request.getParameter("endDate");
	String audienceNum = request.getParameter("audienceNum");
	String director = request.getParameter("director");
	String genre = request.getParameter("genre");
	
	Date releaseDate = Date.valueOf(relDate);
	Date endDate = Date.valueOf(enDate);
	
	Movie movie = new Movie();
	
	movie.setName(name);
	movie.setReleaseDate(releaseDate);
	movie.setEndDate(endDate);
	movie.setDirector(director);
	movie.setAudienceNum(Integer.parseInt(audienceNum));
	movie.setGenre(Integer.parseInt(genre));
	int result = MoviesDAO.insert(movie);
%>
{"result" : <%=result==1 %>}