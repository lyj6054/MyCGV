<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.mycgv.vo.*,com.mycgv.dao.*"
    %>
<%
	String nid= request.getParameter("nid");
	CgvNoticeDAO dao= new CgvNoticeDAO();
	CgvNoticeVO vo= dao.getContent(nid);
	
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
				<form name="noticeUpdateForm" action="noticeUpdateProc.jsp" method="post" class="admin_notice_update">
				<input type="hidden" name="nid" value="<%=vo.getNid() %>">
					<ul>
						<li>
							<label>제목</label>
							<input type="text" name="ntitle" value="<%=vo.getNtitle()%>">
						</li>
						<li>
							<label>내용</label>
							<textarea rows="10" cols="50" name="ncontent"><%=vo.getNcontent()%>
							</textarea>
						</li>
						<li>
							<label>파일첨부</label>
							<input type="file" name="nfrile">
						</li>
						<li>
							<button type="submit" class="btn_style">수정완료</button>
							<button type="reset" class="btn_style">취소</button>
							<a href="notice_content.jsp?nid=<%=nid%>" ><button type="button" class="btn_style">이전페이지</button></a>
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