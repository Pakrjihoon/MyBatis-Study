<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//Calendar 객체를 사용하여 현재 년도를 구한다.
	Calendar now = Calendar.getInstance();
	int year = now.get(Calendar.YEAR);    
%>
<meta charset="UTF-8">
<title>전화번호 입력페이지</title>
<%@ include file="/WEB-INF/template/link.jsp" %>
</head>
<body>
<%@ include file="/WEB-INF/template/header.jsp" %>
<h2>전화번호 입력</h2>
	<div id="formBox">
		<form id="form" action="register.jsp" method="post">
			<fieldset>
				<legend class="screen_out">전화번호 입력폼</legend>
				<div class="row">
					<label for="name">이 름</label>
					<input id="name" title="2~6글자 한글과 숫자로만 입력해주세요."
					 placeholder="이름입력" name="name"/>
				</div>
				<div class="row">
					<label for="phone">전화번호</label>
					<span id="phone">
					<select id="phone1" title="반드시 선택해주세요." name="first">
							<option>010</option>
							<option>011</option>
							<option>016</option>
							<option>017</option>
							<option>019</option>
					</select>
					- 
					<input id="phone2" title="3~4글자 숫자만 입력해주세요." class="digit4"
						placeholder="숫자입력" size="4" maxlength="4" name="middle"/>
					- 
					<input id="phone3" title="4글자 숫자만 입력해주세요." class="digit4"
					placeholder="숫자입력" size="4"	maxlength="4" name="last"/>
					</span>
				</div>
				<div class="row">
					<label for="age">생년월일</label><span id="age">
					<select id="year"  name = "year">
					<%for(int i=year; i > year-100; i--) { %>
					<option><%=i %></option>
					<%} %>
					</select><em>년</em>
					<select id="month" name = "month">
							<%for (int i=1; i<13; i++){ %>
							<option><%=i %></option>
							<%} %>
					</select><em>월</em>
					<select id="date" name = "date">
						<%for(int i=1; i<32; i++) { %>
					<option><%=i %></option>
					<% } %>
					</select><em>일</em>
					</span>
				</div>
				<div class="row">
					<label for="gender">성 별</label>
					<span id="gender">
					<input type="radio" 
					 checked="checked" id="female" name="gender" value="W">
					<label for="female"><i class="fa fa-female"></i> 여 자</label>
					<input type="radio" id="male"  name="gender" value="M"> 
					<label for="male"><i class="fa fa-male"></i> 남 자</label>
					</span>
				</div>
				<div id="btnBox">
					<button type="submit" onclick="location='register.jsp'" class="btn">				
						<i class="fas fa-pencil-alt"></i> 전화번호 등록
					</button>
					<button type="reset" class="btn">
						<i class="fas fa-redo-alt"></i> 리 셋
					</button>
					<a href="index.jsp" class="btn"><i class="fa fa-arrow-left"></i> 전화번호부로</a>
				</div>
			</fieldset>
		</form>
	</div><!-- //formBox  --> 
<%@ include file="/WEB-INF/template/footer.jsp" %>
</body>
</html>