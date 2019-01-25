<%@page import="java.util.Calendar"%>
<%@page import="vo.Movie"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Calendar now = Calendar.getInstance();
//올해 
int year = now.get(Calendar.YEAR);
// 이번 달
int month = now.get(Calendar.MONTH)+1;
// 이번 달 마지막 날
int lastDay = now.getActualMaximum(Calendar.DAY_OF_MONTH);
// 현재 날짜
int today = now.get(Calendar.DATE);  	
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Genre Management Service</title>
<link href="https://fonts.googleapis.com/css?family=Jua|Yeon+Sung" rel="stylesheet">
<style type="text/css">
	#loader {
		width: 100%;
		height: 100%;
		position: fixed;
		left: 0 ;
		top : 0 ;
		background-position : center;
		background-color: rgba(255,255,255,.9);
		background-image: url(img/loader.gif);
		background-repeat: no-repeat;
		display : none;
	}
	body {
		margin: 10px 0;
		font-family: 'Jua', sans-serif;
	}
	#wrap { 
		width : 1450px;
		border: 1px solid #424242;
		margin : auto;
		overflow: hidden;
		position : relative;
	}
	h1 {
		font-size: 60px;
		text-align: center;
	}
	h2 {
		text-align: center;
		font-size: 40px;
		margin: 10px;
	}
	#genreListBox {
		border : 1px solid #424242;
		width : 230px;
		padding : 10px;
		margin: 10px;
		float: left;
		
	}
	#genreListBox table {
		width : 230px;
		
	}
	#movieListBox {
		width : 750px;
		padding : 10px;
		border: 1px solid #424242;
		float: left;
		margin : 10px;
	}
	table {
		text-align: center;
		
 	}
 	#genreInsertBox {
 		width : 300px;
 		border : 1px solid #424242;
 		float: left;
 		margin: 10px;
 		padding : 10px;
 	}
 	#movieInsertBox {
 		width : 300px;
 		border : 1px solid #424242;
 		position : absolute;
 		margin: 10px;
 		padding : 10px;
 		top : 50%;
 	}
 	#movieBtn {
 		position: relative;
 		right : -220px;
 	}
</style>
</head>
<body>
	<div id="wrap">
	<h1>장르 관리 웹서비스</h1>
		<div id="genreInsertBox">
			<h2>장르 입력</h2>
			<form id="genreForm">
				<fieldset>
					<legend>장르폼</legend>
					<input id="genreName" autocomplete="off" placeholder="장르명">
					<button>입력</button>
				</fieldset>
			</form>
		</div>
		<div id="movieInsertBox">
			<h2>영화 입력</h2>
			<form id="movieForm">
				<fieldset>
					<legend>영화폼</legend>
					<em>영화이름 : </em><input id="movieName" placeholder="영화이름">
					<br/><br/>
					<div class="row"> 개봉일 : 
					<span id="age">
					<select id="yearR">
					<option selected>2018</option>
					<% for(int i=year+3; i >= year-100 ; i-- ) {
						%> <option> <%=i %> </option> 
						<%} %>		
					</select><em>년</em>
					<select id="monthR">
							<%for(int i=1; i<=12; i++) { %>
							<option <%if(i==month) {  %> selected<% } %>> <%=i %> </option>
							<% } %>
					</select><em>월</em>
					<select id="dateR">
							<%for(int i=1; i<=lastDay; i++) { %>
							<option <%if(i==today) { %> selected <%} %>><%=i %></option>
							<%} %>
					</select><em>일</em>
					</span>
				</div>
					<div class="row"> 종료일 : 
					<span id="age">
					<select id="yearE">
						<option selected>0</option>
					<% for(int i=year+3; i >= year-100 ; i-- ) {
						%> <option> <%=i %> </option> 
						<%} %>		
					</select><em>년</em>
					<select id="monthE">
					<option selected>0</option>
							<%for(int i=1; i<=12; i++) { %>
							<option> <%=i %> </option>
							<% } %>
					</select><em>월</em>
					<select id="dateE">
					<option selected>0</option>
							<%for(int i=1; i<=lastDay; i++) { %>
							<option><%=i %></option>
							<%} %>
					</select><em>일</em>
					</span>
				</div><br/>
				<div class="movieEtc">
					<em>감독이름 : </em><input id="director" placeholder="감독이름">
				</div><br/>
				<div class="movieEtc">
					<em>관객수 : </em><input id="audienceNum" placeholder="관객수(없을시 0)">
				</div><br/>
				<div class="movieEtc">
					<em>장르번호 : </em><input id="genreNo" placeholder="장르 번호">	
				</div><br/>		
				<button id = "movieBtn">입력</button>	
				</fieldset>
			</form>
		</div>
		<div id="genreListBox">
			<h2>장르 목록</h2>
			<table border="1">
				<thead>
				<tr>
					<th>번호</th>
					<th>장르명</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
				</thead>
				<tbody>
					
				</tbody>
			</table>
		</div><!-- //genreListBox -->
		<div id="movieListBox">
			<h2>영화 목록</h2>
			<table border="1">
				<thead>
				<tr>
					<th>번호</th>
					<th>영화명</th>
					<th>감독</th>
					<th>개봉일</th>
					<th>관객수</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
				</thead>
				<tbody>
					
				</tbody>
			</table>
		</div><!-- //genreListBox -->
	</div> <!-- //wrap -->
	<div id="loader"></div>
<script src="js/jquery.js"></script>
<script type="text/javascript" src="js/underscore-min.js"></script>
<script src="js/moment-with-locales.js"></script>
<!-- 장르 리스트 템플릿 -->
<script type="text/template" id="genreTmpl">
			<@ _.each(genres,function(genre) { @>
					<tr>
						<td><@=genre.no@></td>
						<td><@=genre.name@></td>
						<td>
							<button data-no="<@=genre.no@>" class="update">수정</button>
						</td>
						<td>
							<button data-no="<@=genre.no@>" class="delete">삭제</button>
						</td>
					</tr>
			<@ }) @>			
</script>
<script type="text/template" id="movieTmpl">
		<@_.each(movies,function(movie) { @>
					<tr>
						<td><@=movie.no@></td>
						<td><@=movie.name@></td>
						<td><@=movie.director@></td>
						<td><@=moment(movie.releaseDate).format("YYYY년 MM월 DD일")@></td>
						<td><@=addCommas(movie.audienceNum)@>명</td>
						<td>
							<button data-no="<@=movie.no@>" class="update">수정</button>
						</td>
						<td>
							<button data-no="<@=movie.no@>" class="delete">삭제</button>
						</td>
					</tr>
		<@ }) @>
</script>
<script>

//jsp 에서 언더스코어를 활용하기 위해서
// % -> @ 로 사용
	_.templateSettings = {
		interpolate: /\<\@\=(.+?)\@\>/gim,
		evaluate: /\<\@(.+?)\@\>/gim,
		escape: /\<\@\-(.+?)\@\>/gim
		};
	
	// 로딩이미지
	var $loader = $("#loader");
	
	// 장르 템플릿
	var genreTmp = _.template($("#genreTmpl").html());
	
	// 영화 템플릿
	var movieTmp = _.template($("#movieTmpl").html());
	
	// 장르를 불러오는 함수
	function getGenres() {
		// 1) 로딩이미지 보여주기
		$loader.show();
		
		$.ajax({
			url:"ajax/genreList.jsp",
			type:"post",
			dataType:"json",
			error:function() {
				alert("서버 점검중");
			},
			success: function(json) {
				//템플릿 이용 출력
				$("#genreListBox tbody").html(genreTmp({genres:json}));
				$loader.fadeOut();
			}
		});
	} // getGenres()
	function getMovies() {
		$loader.show();
		
		$.ajax({
			url: "ajax/movieList.jsp",
			type : "post",
			dataType : "json",
			error: function() {
				alert("Error");
			},
			success: function(json) {
				$("#movieListBox tbody").html(movieTmp({movies:json}));
				$loader.fadeOut();
			}
		});
	} // getMovies()
	
	// 페이지 로딩후 바로 호출
	getGenres();
	getMovies();
	
	//ajax이후에 만들어진 요소에 이벤트리스너를 붙일때는
	//인자 3개짜리
	// $부모.on(이벤트명, 자식, 함수);
	$("#genreListBox").on("click",".delete", function() {
		
		// 1) 로딩이미지 보여주고
		$loader.show();
	
		// 2) 해당 번호 얻어오기
		//var no = $(this).attr("data-no");
		var no = $(this).data("no");
		//var no = this.dataset.no;
		
		// 3) ajax
		$.ajax({
			url: "ajax/deleteGenre.jsp",
			type: "post",
			dataType:"json",
			data:{"no":no}, // 파라미터
			error:function() {
				alert("점검중");
			},
			success:function(json) {
				if(json.result) {
					// 지워졌으니까 갱신
					getGenres();
				}else {
					alert("지워지지 않았습니다.");
					$loader.fadeOut();
				}
			}
		}) // ajax() end
	});
$("#movieListBox").on("click",".delete", function() {
		
		$loader.show();
		var no = $(this).data("no");

		$.ajax({
			url: "ajax/deleteMovie.jsp",
			type: "post",
			dataType:"json",
			data:{"no":no}, // 파라미터
			error:function(xhr, error, code) {
				alert("점검중");
				// 에러난 코드를 알고싶으면 code 출력
				// ex) alert(code);
			},
			success:function(json) {
				if(json.result) {
					// 지워졌으니까 갱신
					getMovies();
				}else {
					alert("지워지지 않았습니다.");
					$loader.fadeOut();
				}
			}
		}) // ajax() end
	});
	
	function addCommas(nStr){
		nStr += '';
		var x = nStr.split('.');
		var x1 = x[0];
		var x2 = x.length > 1 ? '.' + x[1] : '';
		var rgx = /(\d+)(\d{3})/;
		while (rgx.test(x1)) {
		x1 = x1.replace(rgx, '$1' + ',' + '$2');
		}
		return x1 + x2;
	}
	$("#genreForm").submit(function(e) {
		// submit 막기
		e.preventDefault();
		
		// 1) 로딩이미지 보여주기
		$loader.show();
	
		// 2) 유저가 입력한 장르명 얻기 
		var name = $("#genreName").val();
		
		$.ajax({
			url: "ajax/insertGenre.jsp",
			type:"post",
			dataType:"json",
			data:{name:name},
			error:function(xhr, error,code) {
				alert("점검중");
			}, 
			success:function(json) {
				if(json.result){
					getGenres();
				} else {
					alert("다시 시도하세요");
					$loader.fadeOut();
				}
				//내용 비우고 포커스 맞추고
				$("#genreName").val("").focus();
			}
		})
	});
	
	$("#movieForm").submit(function(e) {
		// submit 막기
		e.preventDefault();
		
		// 1) 로딩이미지 보여주기
		$loader.show();
	
		// 2) 유저가 입력한 장르명 얻기 
		var name = $("#movieName").val();
		var director = $("#director").val();
		var audienceNum = $("#audienceNum").val();
		var genre = $("#genreNo").val();
		var releaseDate = $("#yearR").val() +"-"+ $("#monthR").val() +"-"+ $("#dateR").val();
		var endDate = $("#yearE").val() +"-"+ $("#monthE").val() +"-"+ $("#dateE").val();
		
		$.ajax({
			url: "ajax/insertMovie.jsp",
			type:"post",
			dataType:"json",
			data:{name:name, releaseDate:releaseDate, endDate:endDate,director:director, audienceNum:audienceNum, genre:genre},
			error:function(xhr, error,code) {
				alert(code);
			}, 
			success:function(json) {
				if(json.result){
					getMovies();
				} else {
					alert("다시 시도하세요");
					$loader.fadeOut();
				}
				//내용 비우고 포커스 맞추고
				$("#movieName").val("").focus();
			}
		})
	});
	
</script>
</body>
</html>