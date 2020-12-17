<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.mycgv.vo.*,com.mycgv.dao.*,java.util.ArrayList"
    %>
<%
	CgvNoticeDAO dao= new CgvNoticeDAO();
	ArrayList<CgvNoticeVO> list=dao.getList();

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
		<section class="section1">
			<div>
				<h1>공지사항</h1>
				<table class="notice_list">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>등록일</th>
						<th>조회수</th>
					</tr>
					<% for(CgvNoticeVO vo:list){ %>
					<tr>
						<td><%=vo.getRno() %></td>
						<td><a href="notice_content.jsp?nid=<%=vo.getNid()%>"><%=vo.getNtitle() %></a></td>
						<td><%=vo.getNdate() %></td>
						<td><%=vo.getNhits() %></td>
					</tr>
					<%}%>
					<tr>
						<td colspan="4"> << 1 2 3 4 5 6 7 8 9 10 >> </td>
					</tr>
				</table>
			</div>
		</section>
		
	
	</div>	
	
	<!--  footer  -->
	<jsp:include page="../footer.jsp" />
	
	 
</body>
</html>