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
				<h1>회원가입</h1>				
				<form name="joinForm" class="join">
					<ul>  
						<li >
							<h3 class="success_div">회원가입에 성공하셨습니다.</h3>
							<img class="success_div" src="../images/login_success.jpg" width="60%">;
						</li>
						<li>
							<a href="../login/login.jsp"><button type="button" class="btn_style" >로그인</button></a>
							<a href="../index.jsp"><button type="button" class="btn_style">메인페이지</button></a>
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














