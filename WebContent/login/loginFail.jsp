<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/MyCGV/css/mycgv.css">
<script src="http://localhost:9000/MyCGV/js/jquery-3.5.1.min.js"></script>
<script src="http://localhost:9000/MyCGV/js/mycgv.js"></script>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp" />
	
	<!-- content -->
	<div class="content">
		<section class="section1">
			<div>
				<h1>로그인 실패</h1>
				<form name="loginForm" class="join">
					<ul>
						<li>
							<h3 class="fail_h3">로그인에 실패하셨습니다.</h3>
						</li>
						<li>
							<a href="login.jsp"><button type="button" class="btn_style">로그인하기</button></a>
							<a href="http://localhoest:9000/MyCGV/index.jsp"><button type="button" class="btn_style">메인페이지</button></a>
						</li>
					</ul>
				
				</form>
			</div>
		</section>		
	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>














