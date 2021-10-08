<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글쓰기</title>
<!-- Bootstrap 라이브러리 등록 : CND 방식 -> 인터넷이 되어야 한다. -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){
	//취소 이벤트 처리
	$(".cancelBtn").click(function(){
		history.back();
	});
});
</script>
</head>
<body>
<div class="container">
	<h1>게시판 글쓰기</h1>
	<form action="write.do" method="post" id="writeForm">
		<!-- 제목입력 -->
		<div class="form-group">
			<label for="title">제목</label>
			<!-- id, class : 화면 컨트롤을 위해서(빠른 선택), name : 넘어가는 데이터 이름 -->
			<input type="text" class="form-control" id="title" name="title"
				required="required" pattern="^[^.]{3,99}$" 
				title="제목을 4~100 글자 사이로 입력하셔야 합니다. 처음 글자를 공백문자를 사용할 수 없습니다.">
		</div>
		<div class="form-group">
			<label for="writer">작성자</label>
			<!-- 입력한 데이터의 앞뒤 공백문자는 제거(trim()) -->
			<input type="text" class="form-control" id="writer" name="writer"
			autocomplete="off" title="작성자는 4~10 글자 사이로 입력하셔야 합니다.">
		</div>
		<div class="form-group">
			<label for="content">내용</label>
			<textarea rows="5" cols="5" class="form-control" id="content" name="content"></textarea>
		</div>
		<div class="form-group">
			<label for="pw">비밀번호 : 자신글 확인용</label>
			<input type="password" class="form-control" id="pw" name="pw"
				autocomplete="off" title="비밀번호는 4~20 글자 사이로 입력하셔야 합니다." pattern="^.{4,20}$">
		</div>
		<button>등록</button>
		<button type="reset">다시 입력</button>
		<button class="cancelBtn" type="button">취소</button>
	</form>
	
</div>

</body>
</html>