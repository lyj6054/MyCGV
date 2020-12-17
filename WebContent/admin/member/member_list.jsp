<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.mycgv.dao.*, com.mycgv.vo.*,java.util.*"%>
<%
	 CgvMemberDAO dao = new CgvMemberDAO();
	ArrayList<CgvMemberVO> list = dao.getList();
%>
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
					<% for(CgvMemberVO vo:list){ %>
					<tr>
						<td><%=vo.getRno() %></td>
						<td><a href="member_content.jsp?id=<%=vo.getId()%>"><%=vo.getId() %></a></td>
						<td><%=vo.getName() %></td>
						<td><%=vo.getCp() %></td>
						<td><%=vo.getGender() %></td>
						<td><%=vo.getMdate() %></td>
					</tr>
					<% } %>
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