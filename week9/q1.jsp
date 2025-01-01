<%@ page import="java.sql.*" %>
<html>
<head><title>Employee Search</title></head>
<body>
    <form method="post">
        <select name="field">
            <option value="ID">ID</option>
            <option value="FName">First Name</option>
            <option value="LName">Last Name</option>
            <option value="Project">Project</option>
            <option value="Salary">Salary</option>
        </select>
        <input type="text" name="value" />
        <input type="submit" value="Search" />
    </form>
    
    <%
        String field = request.getParameter("field");
        String value = request.getParameter("value");
        if (field != null && value != null) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/yourdb", "username", "password");
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM Employee WHERE " + field + " LIKE '%" + value + "%'");
                while (rs.next()) {
                    out.println(rs.getInt("ID") + " " + rs.getString("FName") + " " + rs.getString("LName") + " " + rs.getString("Project") + " " + rs.getDouble("Salary") + "<br>");
                }
                rs.close();
                stmt.close();
                conn.close();
            } catch (Exception e) {
                out.println("Error: " + e.getMessage());
            }
        }
    %>
</body>
</html>
