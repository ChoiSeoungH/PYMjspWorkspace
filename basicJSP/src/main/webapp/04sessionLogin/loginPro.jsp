<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%

  boolean pass = false;
  String msg ="";
    %>
    
 <script>
function printMsg( url ,msg) {
	alert(msg);
	location.href=url;
}

</script>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<h1><%=msg %></h1>
<% if(pass){ %>

<script>
</script>

<%}else{ %>
<script>
</script>
<%} %>
</body>
</html>

