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
		<section class="section1" id="admin_section1">
			<div>
				<h1>회원리스트</h1>
				<table class="admin_member_list">
					<tr>
						<th>번호</th>
						<th>아이디</th>
						<th>성명</th>
						<th>핸드폰 번호</th>
						<th>성별</th>
						<th>가입일자</th>
					</tr>
					<tr>
						<td>1</td>
						<td><a href="member_content.jsp">test@naver.com</a></td>
						<td>홍길동</td>
						<td>010-1234-1234</td>
						<td>남자</td>
						<td>2020.11.12</td>
					</tr>
					<tr>
						<td>2</td>
						<td>test@naver.com</td>
						<td>홍길동</td>
						<td>010-1234-1234</td>
						<td>남자</td>
						<td>2020.11.12</td>
					</tr>
					<tr>
						<td>3</td>
						<td>test@naver.com</td>
						<td>홍길동</td>
						<td>010-1234-1234</td>
						<td>남자</td>
						<td>2020.11.12</td>
					</tr>
					<tr>
						<td>4</td>
						<td>test@naver.com</td>
						<td>홍길동</td>
						<td>010-1234-1234</td>
						<td>남자</td>
						<td>2020.11.12</td>
					</tr>
					<tr>
						<td>5</td>
						<td>test@naver.com</td>
						<td>홍길동</td>
						<td>010-1234-1234</td>
						<td>남자</td>
						<td>2020.11.12</td>
					</tr>
					<tr>
						<td>6</td>
						<td>test@naver.com</td>
						<td>홍길동</td>
						<td>010-1234-1234</td>
						<td>남자</td>
						<td>2020.11.12</td>
					</tr>
					<tr>
						<td>7</td>
						<td>test@naver.com</td>
						<td>홍길동</td>
						<td>010-1234-1234</td>
						<td>남자</td>
						<td>2020.11.12</td>
					</tr>
					<tr>
						<td>8</td>
						<td>test@naver.com</td>
						<td>홍길동</td>
						<td>010-1234-1234</td>
						<td>남자</td>
						<td>2020.11.12</td>
					</tr>
					<tr>
						<td>9</td>
						<td>test@naver.com</td>
						<td>홍길동</td>
						<td>010-1234-1234</td>
						<td>남자</td>
						<td>2020.11.12</td>
					</tr>
					<tr>
						<td>10</td>
						<td>test@naver.com</td>
						<td>홍길동</td>
						<td>010-1234-1234</td>
						<td>남자</td>
						<td>2020.11.12</td>
					</tr>
					
					<tr>
						<td colspan="6"> << 1 2 3 4 5 6 7 8 9 10 >> </td>
					</tr>
				</table>
			</div>
		</section>
		
	
	</div>	
	
	<!--  footer  -->
	<jsp:include page="../../footer.jsp" />
	
	 
</body>
</html>