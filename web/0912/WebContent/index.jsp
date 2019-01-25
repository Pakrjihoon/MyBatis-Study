<%@page import="com.bjd.employee.util.PaginateUtil"%>
<%@page import="com.bjd.employee.dao.EmployeeDAO"%>
<%@page import="com.bjd.employee.vo.Employee"%>
<%@page import="java.util.List"%>
<%@page import="com.bjd.employee.vo.PageVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pageNoStr = request.getParameter("page");
	//현재 페이지 번호 : pageNo 
	int pageNo = 1;
	if (pageNoStr!=null) {
		pageNo = Integer.parseInt(pageNoStr);
	}

	//한 페이지당 보여지는 게시물 수 : numPage
		int numPage = 5;
			
		PageVO pageVO = new PageVO(pageNo, numPage);
		List<Employee> list = EmployeeDAO.selectList(pageVO);
		// 전체 게시물 수
		int total = EmployeeDAO.selectTotal();
		// 한 페이지에 보여질 블록갯수
		int numBlock = 3;
		// 주소 
		String url = "index.jsp";
		// 파라미터
		String param = "page=";
		String paginate = PaginateUtil.getPaginate(pageNo, total, numPage, numBlock, url, param);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 명부</title>
<%@ include file="/WEB-INF/template/link.jsp"%>
</head>
<body>

    
<%@ include file="/WEB-INF/template/header.jsp" %>
<div id="content">
<h2>사원 목록</h2>
<div id="phoneBox">
<table border="1">
<caption class="screen_out">사원표</caption>
<colgroup>
<col id="name"/>
<col id="phone"/>
<col id="gender"/>
<col id="age"/>
<col id="update"/>
<col id="delete"/>
</colgroup>
<thead>
	<tr>
  <th>사 번</th>
  <th>성</th>
  <th>이 름</th>
  <th>월 급</th>
  <th>채용일</th>
  <th>수 정</th>
  <th>삭 제</th>
	</tr>
</thead>
<tbody>

<tr>
  <%
  	if(list.isEmpty()){
  %><td colspan="7">사원이 존재하지 않습니다.</td> <%
 	}
 %>
</tr>
<%
	for(Employee employee : list ) {
%>
		<tr>
			<th><%=employee.getEmployeeId() %></th>
			<td><%=employee.getFirstName()%></td>
			<td><%=employee.getLastName()%></td>
			<td><%=employee.getSalary()%></td>
			<td><%=employee.getHireDate() %></td>
			<td>
				<a href="" class="btn update"><i class="fa fa-wrench"></i> 수정</a>
			</td>
			<td>
				<a href="" class="btn delete"><i class="far fa-trash-alt"></i> 삭제</a>
			</td>
		</tr>
		<% } %>
</tbody>

<tfoot>
	<tr>
  <td id="btnBox" colspan="6">
  <a href="registerForm.jsp" class="btn"><i class="fa fa-pencil"></i> 사원 등록</a>
  </td>
	</tr>
</tfoot>
</table>

</div>
</div><!-- //content  -->
<%=paginate %>    
<%@ include file="/WEB-INF/template/footer.jsp" %>
</body>
</html>