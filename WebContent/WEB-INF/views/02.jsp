<%@page import="jstlel.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	UserVo vo1 = new UserVo();
	vo1.setNo(1);
	pageContext.setAttribute("vo1", vo1);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Scope Test</h1>
	Application Scope: ${applicationScope.vo4.no } <br>
	Session Scope: ${sessionScope.vo3.no } <br>
	Request Scope: ${requestScope.vo2.no } <br>
	page scope: ${pageScope.vo1.no}
	
	<h1>Scope Test</h1>
	Application Scope: ${vo4.no } <br> <!-- 앞에 생략해도 4개중에 뭔지 찾음 -->
	Session Scope: ${vo3.no } <br>
	Request Scope: ${vo2.no } <br>
	page scope: ${vo1.no}  <!-- 이름을 같게해버리면 스코프가 겹침-->
</body>
</html>