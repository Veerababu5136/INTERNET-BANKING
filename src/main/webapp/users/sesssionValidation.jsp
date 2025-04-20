<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
 <%
        String email = (String) session.getAttribute("email");
    
 if(email==null)
 {
	 %>
	 <script type="text/javascript">
	 alert("session expired..");
	 window.location.href="index.jsp";
	 </script>
	 <%
 }
    %>
    
</body>
</html>