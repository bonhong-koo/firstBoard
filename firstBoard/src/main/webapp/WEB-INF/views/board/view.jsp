<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글보기</title>
<!-- Bootstrap 라이브러리 등록 : CND 방식 -> 인터넷이 되어야 한다. -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
<style type="text/css">
	#pwDiv{display: none;}
</style>
<script type="text/javascript">
	$(function(){
		$("#deleteBtn").click(function(){
			$("#pwDiv").show();
			return false;
		});
		
		$("#delete_cancel_Btn").click(function(){
			$("#pwDiv").hide();
			return false;
		});
	});
</script>
</head>
<body>
	<div class="container">
		<h1>게시판 글보기</h1>

		<table class="table">
			<tr>
				<th>글번호</th>
				<td>${vo.no }</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>${vo.title }</td>
			</tr>
			<tr>
				<th>글내용</th>
				<td><pre
						style="background: #fff, border: none; font-size: 11pt"> ${vo.content }</pre></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${vo.writer }</td>
			</tr>
			<tr>
				<th>작성일</th>
				<td><fmt:formatDate value="${vo.writeDate }"
						pattern="yyyy.MM.dd" /></td>
			</tr>
			<tr>
				<th>조회수</th>
				<td>${vo.hit }</td>
			</tr>
			<tr>
				<td colspan="2">
					<a href="update.do?no=${vo.no }" role="button"
					class="btn btn-default">수정</a>
					 <a href="" id="deleteBtn"
					role="button" class="btn btn-default">삭제</a>
					 <a href="list"
					class="btn btn-default">리스트</a>
					<div id="pwDiv">
						<form action="delete.do" method="post">
							<input type="hidden" name="no" value="${vo.no }"/>
							<div class="form-group">
								<label for="pw">비밀번호:자신글 확인용</label>
								<input type="password" class="form-control" id="pw" name="pw"
								autocomplete="off" title="비밀번호는 4~20 글자 사이로 입력하셔야 합니다."
								pattern="^.{4,20}"/>
							</div>
							<button class="btn btn-default btn-xs">삭제</button>
							<button type="button" class="btn btn-default btn-xs" id="delete_cancel_Btn">삭제 취소</button>
						</form>
					</div>
				</td>
			</tr>
		</table>
	</div>

</body>
</html>