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
		<section class="section1"  id="admin_section1">
			<div>
				<h1>게시판</h1>
				<table class="board_content">
					<tr>
						<th>제목</th>
						<td>도굴 재미 있나요??</td>
						<th>등록일</th>
						<td>2020.11.11</td>
						<th>조회수</th>
						<td>150</td>
					</tr>
					<tr>
						<td colspan="6">
						<p>재미있어요~^-^<br>
							이제훈 잘 생겼어요~<br><br><br>
						</p>
						</td>
					</tr>
					<tr>
						<td colspan="6">
							<a href="board_update.jsp"><button type="button"  class="btn_style">수정</button></a>
							<a href="board_delete.jsp"><button type="button" class="btn_style">삭제</button></a>
							<a href="board_list.jsp"><button type="button" class="btn_style">목록으로</button></a>
						</td>
					</tr>
				</table>
			</div>
		</section>
	</div>	
	
	<!--  footer  -->
	<jsp:include page="../footer.jsp" />
</body>
</html>