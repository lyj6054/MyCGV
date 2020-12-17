<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.mycgv.vo.*, com.mycgv.dao.*"%>
<%
	String bid = request.getParameter("bid");
	CgvBoardDAO dao=new CgvBoardDAO();
	CgvBoardVO vo=dao.getContent(bid);
	dao.getUpdateHits(bid);
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
	<jsp:include page="../header.jsp" />
	
	<!--  content  -->
	<div class="content">
		<section class="section1"  id="admin_section1">
			<div>
				<h1>게시판</h1>
				<table class="board_content">
					<tr>
						<th>제목</th>
						<td><%=vo.getBtitle() %></td>
						<th>등록일</th>
						<td><%=vo.getBdate() %></td>
						<th>조회수</th>
						<td><%=vo.getBhits() %></td>
					</tr>
					<tr>
						<td colspan="6">
							<p><%=vo.getBcontent() %></p>
						</td>
					</tr>
					<tr>
						<td colspan="6">
							<a href="board_update.jsp?bid=<%=bid%>"><button type="button"  class="btn_style">수정</button></a>
							<a href="board_delete.jsp?bid=<%=bid%>"><button type="button" class="btn_style">삭제</button></a>
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