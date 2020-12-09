<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/MyCGV/css/mycgv.css">
</head>
<body>
	<!--  header  -->
	<jsp:include page="../header.jsp" />
	
	<!--  content  -->
	<div class="content">
		<section class="section1">
			<div>
				<h1>게시판</h1>
				<form name="boardUpdateForm" action="#" method="get" class="board_update">
					<ul>
						<li>
							<label>제목</label>
							<input type="text" name="btitle" value="도굴 재미 있나요??">
						</li>
						<li>
							<label>내용</label>
							<textarea rows="10" cols="50" name="bcontent">재미있어요~^-^ 이제훈 잘 생겼어요~
							</textarea>
						</li>
						<li>
							<label>파일첨부</label>
							<input type="file" name="bfrile">
						</li>
						<li>
							<button type="button" class="btn_style">수정완료</button>
							<button type="reset" class="btn_style">취소</button>
							<a href="board_content.jsp"><button type="button" class="btn_style">이전페이지</button></a>
							<a href="board_list.jsp"><button type="button" class="btn_style">목록으로</button></a>
						</li>
					</ul>
				</form>
			</div>
		</section>
		
	
	</div>	
	
	<!--  footer  -->
	<jsp:include page="../footer.jsp" />
	
	 
</body>
</html>