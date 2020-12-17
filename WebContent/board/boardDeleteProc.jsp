<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.mycgv.vo.*,com.mycgv.dao.*"%>
<%
	String bid =request.getParameter("bid");
	CgvBoardDAO dao=new CgvBoardDAO();
	boolean result=dao.getDelete(bid);
	
	if(result){
		response.sendRedirect("board_list.jsp");
	}else{
		response.sendRedirect("../errorPage.jsp");
	}
%>
