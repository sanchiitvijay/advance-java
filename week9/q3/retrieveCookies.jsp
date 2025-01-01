<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<html>
<head><title>Retrieve Cookies</title></head>
<body>
    <% 
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie c : cookies) {
                out.println(c.getName() + ": " + c.getValue() + "<br>");
            }
        } else {
            out.println("No cookies found!");
        }
    %>
</body>
</html>
