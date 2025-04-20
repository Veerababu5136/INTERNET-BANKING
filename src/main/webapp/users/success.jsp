<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Success</title>
</head>
<body>
    
    <script>
        alert("Successfully logged in as <%= session.getAttribute("email") %>.");
        window.location.href = "user_dashboard.jsp";
    </script>
</body>
</html>
