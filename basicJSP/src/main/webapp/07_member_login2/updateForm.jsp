<%@page import="member.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>    
<%


   if(dao.getLog() == -1){
	   response.sendRedirect("loginForm.jsp");
	   return;
   }
   Member member = dao.getLogMember();

%>
 
 <h1> 회원수정  </h1>
	<form action="updatePro.jsp" method="post">
	<table border="1">
		<tr><td>아이디</td><td><input type="text" name="id" value="<%=member.getId()%>" readonly></td></tr>
		<tr><td>패스워드</td><td><input type="password" name="pw" required></td></tr>
		<tr><td>이름</td><td><input type="text" name="name" value="<%=member.getName()%>" ></td></tr>
		<tr><td>성별</td><td><input type="radio" name="gender" value="남성" <%if(member.isGender()){ %> checked <%} %>/>남성&nbsp;
                     <input type="radio" name="gender" value="여성" <%if(!member.isGender()){ %> checked <%} %>>여성&nbsp;</td></tr>
		<tr><td colspan = "2" align="center" id="submit"><input type="submit" value="정보수정"></td></tr>
	</table>
	</form>

<%@ include file="./footer.jsp" %>    