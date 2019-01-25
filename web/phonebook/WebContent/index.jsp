<%@page import="com.bjd.phonebook.vo.PageVO"%>
<%@page import="com.bjd.phonebook.util.PaginateUtil"%>
<%@page import="java.util.Calendar"%>
<%@page import="com.bjd.phonebook.dao.PhonebookDAO"%>
<%@page import="com.bjd.phonebook.vo.Phone"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	Calendar cal = Calendar.getInstance();
	int now = cal.get(Calendar.YEAR);
	
	String pagestrNo = request.getParameter("page");

	int pageNumber = 1;
	
	if(pagestrNo != null){
		pageNumber = Integer.parseInt(pagestrNo);
	}
	
	int numPage = 3; 
	int numBlock = 100;
	PageVO pagevo = new PageVO(pageNumber, numPage);
	
	List<Phone> list = PhonebookDAO.selectList(pagevo);
	
	int total = PhonebookDAO.selectTotal();
	
	String url = "index.jsp";
	String param = "page=";
	
	String paginate = PaginateUtil.getPaginate(pageNumber, total, numPage, numBlock, url, param);
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전화번호부</title>
<%@ include file="/WEB-INF/template/link.jsp" %>

</head>
<body>

<%@ include file="/WEB-INF/template/header.jsp" %>

<div id="content">

<h2>전화번호 목록</h2>
<div id="phoneBox">
<table border="1">
<caption class="screen_out">전화번호표</caption>
<colgroup>
<col id="profile"/>
<col id="name"/>
<col id="phone"/>
<col id="gender"/>
<col id="age"/>
<col id="update"/>
<col id="delete"/>
</colgroup>
<thead>
	<tr>
		<th> 프로필 </th>
  		<th>이 름</th>
  		<th>전화번호</th>
 	 	<th>성 별</th>
 		<th>나 이</th>
  		<th>수 정</th>
  		<th>삭 제</th>
	</tr>
</thead>
<tbody>
<% if(list == null){ %>
<tr>
  <td colspan="6">아직 전화번호가 없습니다.</td>
</tr>
<%} %>
<%for(Phone phone : list) {%>
<tr>
			<td><img class="profile" alt="프로필사진" width="150px" src="thumb/<%=phone.getProfile()%>"></td>
			<th><%=phone.getName() %></th>
			<td><i class="fas fa-mobile"></i> <%=phone.getIncludeNumber() %></td>
			<%if (phone.getGender().equals("F")) {%>
			<td>
			<i class="fa fa-female"></i>
			<%=phone.getRealGender() %>
			</td>
			<%} else {%>
			<td>
			<i class="fa fa-male"></i>
			<%=phone.getRealGender() %>
			</td>
			<%} %>
			<td title=<%=phone.getFormatBirthDate()%>><%=(now - phone.getBirthYear())+1  %>살</td>
			<td>
				<a href="" class="btn update"><i class="fa fa-wrench"></i> 수정</a>
			</td>
			<td>
				<a href="" class="btn delete"><i class="far fa-trash-alt"></i> 삭제</a>
			</td>
		</tr>
		<%} %>
		
</tbody>
<tfoot>
	<tr>
  <td id="btnBox" colspan="7">
  <a href="registerForm.jsp" class="btn"><i class="fa fa-pencil"></i> 전화번호 작성</a>
  </td>
	</tr>
</tfoot>
</table>

</div>
<%=paginate %>
</div><!-- //content  -->    
<%@ include file="/WEB-INF/template/footer.jsp" %>
</body>
</html>