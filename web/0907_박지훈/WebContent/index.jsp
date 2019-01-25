<%@page import="com.bjd.phonebook.dao.PhoneBookDAO"%>
<%@page import="com.bjd.phonebook.vo.Phone"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
List<Phone> list = PhoneBookDAO.selectList();
String confirm = null;
    %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전화번호부 !</title>

<%@ include file="/WEB-INF/template/link.jsp" %>
</head>
<body>

    
<%@ include file="/WEB-INF/template/header.jsp" %>
<h2>전화번호 목록</h2>
<div id="phoneBox">
<table border="1">
<caption class="screen_out">전화번호표</caption>
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
  <th>이 름</th>
  <th>전화번호</th>
  <th>성 별</th>
  <th>나 이</th>
  <th>수 정</th>
  <th>삭 제</th>
	</tr>
</thead>
<tbody>
<%
for(Phone phone : list) {
%>
			<tr class="tr">
				<% if(phone.getRealGender().equals("남자")) {
						confirm ="fa-male"; } else { confirm = "fa-female";}
						%>
				<td><%= phone.getName()%></td>
				<td><i class="fas fa-mobile"></i><%= phone.getIncludeNumber()%></td>
				<td><i class="fas <%=confirm%>"></i>
				<%= phone.getRealGender()%>
				</td>
				<td><%= phone.getRealAge()+1%>살</td>
				<td>
				<a class="btn update" href="updateForm.jsp?no=<%=phone.getNo()%>">
				<i class="fa fa-wrench"></i>수정</a>
				</td>
				<td>
				<a class="btn delete" href="delete.jsp?no=<%=phone.getNo()%>">
				<i class="far fa-trash-alt"></i>삭제</a>
				</td>
			</tr>
		<% } %>
		
<tr>
  <td id="none" colspan="6">아직 전화번호가 없습니다.</td>
</tr>
</tbody>
<tfoot>
	<tr>
  <td id="btnBox" colspan="6">
  <a href="registerForm.jsp" class="btn"><i class="fa fa-pencil"></i> 전화번호 작성</a>
  </td>
	</tr>
</tfoot>
</table>
</div>
<%@ include file="/WEB-INF/template/footer.jsp" %>
<script src="js/jquery.js"></script>
<script>

// 전화번호가 입력이 아무것도 안되있으면 
// 조건문을 통해 비교하여 hide 혹은 show합니다.
if($(".tr").length >= 1) {
	$("#none").hide();
} else {
	$("#none").show();
}
// 약간의 오류가 있습니다. 처음 삭제를 안한다고 취소를 하면
//삭제가 되지않지만 다음 삭제를 원할때는 삭제 버튼을 두번 해야 
//삭제가 됩니다.  
$(".delete").click(function check() {
	if(confirm("삭제하시겠습니까? ")==true) {
		location.replace('index.jsp');
	}
	else {
		$(".delete").attr("href","#");
	}
});
</script>
</body>
</html>