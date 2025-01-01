<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<html>
<head><title>Store Cookies</title></head>
<body>
    <% 
        Cookie c1 = new Cookie("userName", "JohnDoe");
        Cookie c2 = new Cookie("userEmail", "johndoe@example.com");
        Cookie c3 = new Cookie("userLocation", "New York");
        c1.setMaxAge(60*60*24); c2.setMaxAge(60*60); c3.setMaxAge(30);
        response.addCookie(c1); response.addCookie(c2); response.addCookie(c3);
        out.println("Cookies stored!");
    %>
</body>
</html>
