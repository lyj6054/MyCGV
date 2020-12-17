<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.mycgv.dao.*, com.mycgv.vo.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="vo" class="com.mycgv.vo.CgvBoardVO" />
<jsp:setProperty name="vo" property="*" />

<%
	CgvBoardDAO dao=new CgvBoardDAO();
	boolean result=dao.getInsert(vo);
	
	if(result){
		response.sendRedirect("board_list.jsp");
	}else{
		response.sendRedirect("../errorPage.jsp");
	}
%>
