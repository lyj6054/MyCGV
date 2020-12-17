<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import="com.mycgv.vo.*,com.mycgv.dao.*"%>
<jsp:useBean id="vo" class="com.mycgv.vo.CgvMemberVO" />
<jsp:setProperty name="vo" property="*" />
<%
	CgvMemberDAO dao= new CgvMemberDAO();
	int result= dao.getLogin(vo);
	
	if(result!=0){
		//로그인 성공
		response.sendRedirect("http://localhost:9000/MyCGV/index.jsp");
	}else{
		//로그인 실패
		response.sendRedirect("http://localhost:9000/MyCGV/login/loginFail.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>