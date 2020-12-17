<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  
    import="com.mycgv.vo.* ,com.mycgv.dao.*"%>
    
<% request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="vo" class="com.mycgv.vo.CgvMemberVO"  /><!-- 객체생성 -->
<jsp:setProperty name="vo" property="*" />

<%
	//db연동 후 저장
	CgvMemberDAO dao= new CgvMemberDAO();
	boolean join_result = dao.getInsert(vo);
	
	if(join_result){
		//회원가입 성공
		response.sendRedirect("joinSuccess.jsp");
		
	}else{
		//회원가입 실패 - 서버연동 시 에러발생 : 에러페이지 별도로 생성 후 호출
		response.sendRedirect("../errorPage.jsp");
		
	}
%>
