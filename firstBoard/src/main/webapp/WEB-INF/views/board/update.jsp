<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글 수정</title>
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
	//수정 취소 이벤트 처리
	$(".cancelBtn").click(function(){
		alert("취소클릭");
		history.back();
	});
});
</script>
</head>
<body>
	<div class="container">
		<h1>게시판 글 수정</h1>
		<form action="update.do" method="post" id="updateForm">
			<!-- bootstrap의 폼 : form -> form-group -> form-control -->
			<!-- 넘겨질 글번호 : 수정 불가(readonly) -->
			<div class="form-group">
				<label for="no">글 번호</label>
				<input type="text" class="form-control" id="no" name="no" value="${vo.no }" readonly="readonly"/>
			</div>
			<!-- 제목 입력 -->
			<div class="form-group">
				<label for="title">제목</label>
				<input type="text" class="form-control" id="title" name="title" value="${vo.title}">
			</div>
			<!-- 내용 입력 -->
			<div class="form-group">
				<label for="content">내용</label>
				<textarea rows="5" class="form-control" id="content" name="content">${vo.content }</textarea>
			</div>
			<!-- 작성자 -->
			<div class="form-group">
				<label for="writer">작성자</label>
				<input type="text" class="form-control" id="writer"
					name="writer" autocomplete="off" value="${vo.writer }"
					title="작성자는 4~10 글자 사이로 입력하셔야 합니다.">
			</div>
			<!-- 비밀번호  -->
			<div class="form-group">
				<label for="pw">비밀번호 : 자신글 확인용</label>
				<input type="password" class="form-control" id="pw" name="pw"
					autocomplete="off" title="비밀번호는 4~20 글자 사이로 입력하셔야 합니다." pattern="^.{4,20}$">
			</div>
			<!-- 버튼 처리 -->
			<button>수정</button>
			<button type="reset">다시 입력</button>
			<button class="cancelBtn" type="button">취소</button>
		</form>
	
	</div>

</body>
</html>