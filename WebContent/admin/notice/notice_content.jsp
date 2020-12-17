<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
      import="com.mycgv.vo.*,com.mycgv.dao.*"
    %>
<%
	String nid= request.getParameter("nid");
	CgvNoticeDAO dao= new CgvNoticeDAO();
	CgvNoticeVO vo= dao.getContent(nid);
	dao.getUpdateHits(nid);
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
		<section class="section1"  id="admin_section1">
			<div>
				<h1>공지사항</h1>
				<table class="admin_notice_content">
					<tr>
						<th>제목</th>
						<td><%=vo.getNtitle() %></td>
						<th>등록일</th>
						<td><%=vo.getNdate() %></td>
						<th>조회수</th>
						<td><%=vo.getNhits() %></td>
					</tr>
					<tr>
						<td colspan="6">
						<p><%=vo.getNcontent() %></p>
						</td>
					</tr>
					<tr>
						<td colspan="6">
							<a href="notice_update.jsp?nid=<%=nid%>"><button type="button"  class="btn_style">수정</button></a>
							<a href="notice_delete.jsp?nid=<%=vo.getNid()%>"><button type="button" class="btn_style">삭제</button></a>
							<a href="notice_list.jsp"><button type="button" class="btn_style">목록으로</button></a>
						</td>
					</tr>
				</table>
			</div>
		</section>
	</div>	
	
	<!--  footer  -->
	<jsp:include page="../../footer.jsp" />
</body>
</html>