<%@ page import="java.io.*,java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ page errorPage="errorPage.jsp" %>
<%
    // Retrieve the number and selected operation from the request
    String numberStr = request.getParameter("number");
    String operation = request.getParameter("operation");
    double number = 0;
    boolean validInput = true;
    String message = "";
    
    try {
        // Validate and parse the number
        if (numberStr != null && !numberStr.isEmpty()) {
            number = Double.parseDouble(numberStr);
        } else {
            validInput = false;
            message = "Please enter a valid number.";
        }

        // Perform the operation based on the user's choice
        if (validInput) {
            switch (operation) {
                case "sin":
                    message = "Sin(" + number + ") = " + Math.sin(Math.toRadians(number));
                    break;
                case "cos":
                    message = "Cos(" + number + ") = " + Math.cos(Math.toRadians(number));
                    break;
                case "tan":
                    message = "Tan(" + number + ") = " + Math.tan(Math.toRadians(number));
                    break;
                case "log":
                    if (number <= 0) {
                        message = "Logarithm is undefined for zero or negative values.";
                    } else {
                        message = "Log(" + number + ") = " + Math.log(number);
                    }
                    break;
                case "root":
                    if (number < 0) {
                        message = "Square root is undefined for negative values.";
                    } else {
                        message = "Square Root of " + number + " = " + Math.sqrt(number);
                    }
                    break;
                default:
                    message = "Invalid operation.";
            }
        }
    } catch (NumberFormatException e) {
        validInput = false;
        message = "Please enter a valid number.";
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Scientific Calculator Result</title>
</head>
<body>
    <h2>Calculator Result</h2>

    <p><%= message %></p>

    <br><br>
    <a href="index.html">Go back to the calculator</a>
</body>
</html>
