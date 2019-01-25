<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    
<%
	String color = request.getParameter("color");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if("0".equals(color))
		{
	%>
			<h1 style="color:red">Hello World</h1>
	<%
		}
		else if ("1".equals(color))
		{
	%>
			<h1 style="color:blue">Hello World</h1>
	<%
		}
		else if ("2".equals(color))
		{
	%>	
	
			<h1 style="color:green">Hello World</h1>
	<%
		}
		else
		{
		
	%>	
			<h1>Hello World</h1>
	<%
		}
	%>			
			
</body>
</html>