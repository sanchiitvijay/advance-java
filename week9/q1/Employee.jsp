<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Result</title>
</head>
<body>
    <h1>Login Result</h1>
    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            if ("Admin".equals(username) && "Admin123".equals(password)) {
                out.println("<p>Welcome, " + username + "!</p>");
            } else {
                throw new Exception("Invalid username or password.");
            }
        } catch (Exception e) {
            out.println("<p>Error: " + e.getMessage() + "</p>");
        }
    %>
</body>
</html>