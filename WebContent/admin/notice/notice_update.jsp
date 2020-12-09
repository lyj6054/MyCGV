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
	<jsp:include page="../../header.jsp" />
	
	<!--  content  -->
	<div class="content">
		<aside class="admin_main">
			<nav>
				<ul>
					<li><a href="http://localhost:9000/MyCGV/admin/member/member_list.jsp">회원관리</a></li>
					<li><a href="http://localhost:9000/MyCGV/admin/notice/notice_list.jsp">공지사항관리</a></li>
				</ul>
			</nav>
		</aside>
		<section class="section1"  id="admin_section1">
			<div>
				<h1>공지사항</h1>
				<form name="noticeUpdateForm" action="#" method="get" class="admin_notice_update">
					<ul>
						<li>
							<label>제목</label>
							<input type="text" name="ntitle" value="[CGV인제] 임시 영업중단 안내">
						</li>
						<li>
							<label>내용</label>
							<textarea rows="10" cols="50" name="ncontent"><p>안녕하십니까. CGV인제입니다.<br>
								코로나19 확산으로 인해 극장의 영업을 중단 (11/11~)하게 되었습니다.<br>
								극장 이용에 불편을 드려 죄송합니다.<br>
								안심하고 이용할 수 있는 관람환경 조성에 최선을 다하겠습니다.<br><br>
								※ 영업재개 일자는 추후에 홈페이지 공지 드리겠습니다. <br>
							</p>
							</textarea>
						</li>
						<li>
							<label>파일첨부</label>
							<input type="file" name="nfrile">
						</li>
						<li>
							<button type="button" class="btn_style">수정완료</button>
							<button type="reset" class="btn_style">취소</button>
							<a href="notice_content.jsp" ><button type="button" class="btn_style">이전페이지</button></a>
							<a href="notice_list.jsp"><button type="button" class="btn_style">목록으로</button></a>
						</li>
					</ul>
				</form>
			</div>
		</section>
		
	
	</div>	
	
	<!--  footer  -->
	<jsp:include page="../../footer.jsp" />
	
	 
</body>
</html>