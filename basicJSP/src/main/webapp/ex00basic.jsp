<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%--
	[1] JSP는 자바 서버 페이지의 약자이다.
	
	[2] JSP의 역할
		HTML 페이지에서 아래 4개의 태그를 추가로 사용할 수 있다.
	
		(1) 지시자(Directive) 태그			<%@ %>
		(2) 표현식(Expression) 태그		    <%= %>  == oup.print() 결과 String 
		(3) 스크립트릿(Scriptlet) 태그		<%  %>
		(4) 선언자(Declaration) 태그		<%! %>		(사용하지 않음)
 --%>

<% 
   LocalDate today = LocalDate.now();
	System.out.println(today);
	String now = today.format(DateTimeFormatter.ofPattern("yyyy년 MM월 dd일"));
%>
</head>
<body>
<h1> ex00Basic.jsp</h1>

<%
// 스크립트릿 태그 안에서는 자바랑 똑같이 사용할 수 있다  
   int num = 3 + 10;
%>

<h1> <%= num %> </h1>
<h1> <%= now %></h1>
<a href="./ex01basic.html"> ex01basic 이동 </a>
</body>
</html>