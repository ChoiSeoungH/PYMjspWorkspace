<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %> 
<%    
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String gender = request.getParameter("gender");

if(!dao.isValidPw(pw)){
	%>
	<script>
	msgUrl("비밀번호를 다시입력해주세요" ,"updateForm.jsp" );
	</script>
	<%
}else{
	dao.updateOneMember(name, gender);
	%>
	<script>

	msgGoMain("회원 정보 수정완료");

	</script>
<% 	
}
%>


