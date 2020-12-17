<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.mycgv.vo.*,com.mycgv.dao.*"
%>
<%
    String bid= request.getParameter("bid");
    CgvBoardDAO dao = new CgvBoardDAO();
    CgvBoardVO vo=dao.getContent(bid);
%>
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
	<!--  header  -->
	<jsp:include page="../header.jsp" />
	
	<!--  content  -->
	<div class="content">
		<section class="section1">
			<div>
				<h1>게시판</h1>
				<form name="boardUpdateForm" action="boardUpdateProc.jsp" method="post" class="board_update">
					<input type="hidden"  name="bid" value="<%=bid%>">
					<ul>
						<li>
							<label>제목</label>
							<input type="text" name="btitle" value="<%=vo.getBtitle()%>">
						</li>
						<li>
							<label>내용</label>
							<textarea rows="10" cols="50" name="bcontent"><%=vo.getBcontent()%>
							</textarea>
						</li>
						<li>
							<label>파일첨부</label>
							<input type="file" name="bfrile">
						</li>
						<li>
							<button type="submit" class="btn_style">수정완료</button>
							<button type="reset" class="btn_style">취소</button>
							<a href="board_content.jsp?bid=<%=bid%>"><button type="button" class="btn_style">이전페이지</button></a>
							<a href="board_list.jsp"><button type="button" class="btn_style">목록으로</button></a>
						</li>
					</ul>
				</form>
			</div>
		</section>
		
	
	</div>	
	
	<!--  footer  -->
	<jsp:include page="../footer.jsp" />
	
	 
</body>
</html>