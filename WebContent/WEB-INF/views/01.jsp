<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>데이터 타입</h1>
	${iVal } <br>	<!-- 내부적으로 request.getAttribute("iVal")이 작동함-->
	${lVal } <br>
	${fVal } <br>
	${bVal } <br>
	--${obj }-- <br> <!-- null 객체에대한 표현식 -- --   -->
	
	<h1>연산</h1>
	${iVal+20*lVal/2-10} <br>
	${iVal < lVal && fVal < 5}
	${empty obj } <br> <!-- obj가 널 -->
	${not empty obj } <br> <!-- obj가 낫널 -->
	
	<h1>요청 파라미터 가져오기</h1>
	<%=request.getParameter("a") + 10%> <br>
	${param.a + 10} <br> <!-- 표현식일뿐임 자바코드가아님 -->
	
	<h1>객체 접근</h1>
	${vo.no } <br>   <!--응답을하면 사라진다 리퀘스트가 날라가니까 vo객체는 없어진다 reqeustScope는 생략가능  세션스코프? 톰캣이내려오기전까지 계속
	page스코프는 페이지안에서는 변수를만들수없으니까 페이지안에다 저장해둠-->
	${vo.name } <br>
	${vo }
	
	
</body>
</html>