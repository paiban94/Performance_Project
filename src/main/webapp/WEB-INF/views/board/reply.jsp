<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Insert title here</title>

	<c:import url="../temp/bootStrap.jsp"></c:import>


</head>
<body>
	<c:import url="../temp/header.jsp"></c:import>
	<div class="container-fluid">
	
		<div class="row justify-content-center my-4">
			<h1 class="col-md-7 text-center">${board} Reply Page</h1>
		</div>
		
		<div class="row justify-content-center my-4">
			<form class="col-md-7" action="./reply" method="post" enctype="multipart/form-data">
				<input type="hidden" name="num" value="${num}">
				<div class="mb-3">
				  <label for="writer" class="form-label">작성자</label>
				  <input type="text" name="name" readonly value="${member.id}" class="form-control" id="writer">
				</div>
				
				<div class="mb-3">
				  <label for="title" class="form-label">제목</label>
				  <input type="text" name="subject" class="form-control" id="title" placeholder="제목 입력">
				</div>
		
				<div class="mb-3">
				  <label for="contents" class="form-label">내용</label>
				  <textarea name="contents" class="form-control" id="contents" placeholder="내용 입력" rows="7"></textarea>
				</div>
				
				<div id="fileList" class="my-5">
					<div class="input-group mb-3">
						<input type="file" class="form-control" id="photos" name="photos">
					</div>
					<div class="input-group mb-3">
						<input type="file" class="form-control" id="photos" name="photos">
					</div>					
					<div class="input-group mb-3">
						<input type="file" class="form-control" id="photos" name="photos">
					</div>
					<div class="input-group mb-3">
						<input type="file" class="form-control" id="photos" name="photos">
					</div>
					<div class="input-group mb-3">
						<input type="file" class="form-control" id="photos" name="photos">
					</div>					
	
				</div>
							
				<div class="mb-3">
					<button class="my btn btn-danger" type="submit">글쓰기</button>
				</div>
			
			</form>
		</div>
	</div>
</body>
</html>