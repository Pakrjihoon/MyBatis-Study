<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
<%@ include file="/WEB-INF/template/link.jsp" %>
<link rel="stylesheet" href="/css/form.css" />
<link rel="stylesheet" href="/css/tui-editor.min.css">
<link rel="stylesheet" href="/css/tui-editor-contents.min.css" />
</head>
<body>
<%@ include file="/WEB-INF/template/header.jsp" %>
<h2 class="title"><i class="fas fa-pen-nib"></i> 게시글 수정</h2>
<div id='formBox'>
	<!--서버로 데이터를 보내는 폼 -->
	<form id="writeForm" action="/update.jsp" method="post">
		<fieldset>
			<input type="hidden" id="contents" name="contents">
			<legend class="screen_out">글수정폼</legend>
			<div id="titleBox">
				<label for="title">제 목</label>
				<input type="text" id="title" name="title" placeholder="제목을 입력하세요"/>
			</div>
			<div id="editSection"></div>
			<div class="box_btn">
				<button class="btn" type="submit"><i class="fas fa-pen-nib"></i> 글수정</button>
				<button class="btn" type="reset"><i class="fas fa-redo"></i> 취 소</button>
				<a class="btn" href="/index.jsp"><i class="far fa-list-alt"></i> 게시판으로</a>
			</div>
		</fieldset>
	</form>
</div>
<%@ include file="/WEB-INF/template/footer.jsp" %>
<script src="js/jquery.js"></script>
<script src="js/tui-code-snippet.min.js"></script>
<script src='js/markdown-it.js'></script>
<script src="js/to-mark.min.js"></script>
<script src="js/codemirror.js"></script>
<script src="js/highlight.js"></script>
<script src="js/squire-raw.js"></script>
<script src="js/tui-editor-Editor.js"></script>
<script>

    var $tuiEditor = $('#editSection').tuiEditor({
        initialEditType: 'wysiwyg',
        previewStyle: 'vertical',
        height: 600,
        language:"ko_KR",
        toolbarItems: [
            'heading',
            'bold',
            'italic',
            'strike',
            'divider',
            'hr',
            'quote',
            'divider',
            'ul',
            'ol',
            'task',
            'divider',
            'table',
            'link'
          ]
    });

</script>
<script src="js/fix-footer.js"></script>
</body>
</html>
