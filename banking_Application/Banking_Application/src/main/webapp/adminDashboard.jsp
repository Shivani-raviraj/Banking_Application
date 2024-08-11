<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #17153B; /* Background color */
            color: white; /* Text color */
            text-align: center;
            padding: 50px;
        }
        h2 {
            font-size: 2.5em;
            margin-bottom: 20px;
        }
        .button {
            display: block;
            background-color: transparent; /* Transparent background initially */
            color: white; /* Text color */
            border: 2px solid #45FFCA; /* Border color */
            padding: 10px 20px;
            border-radius: 5px;
            margin: 10px auto; /* Center align and margin between buttons */
            transition: background-color 0.3s ease, color 0.3s ease;
            text-decoration: none; /* Remove underline */
            width: 200px; /* Adjust width as needed */
            text-align: center;
        }
        .button:hover {
            background-color: #45FFCA; /* Hover background color */
            color: #17153B; /* Hover text color */
        }
        .button:active {
            background-color: #45FFCA; /* Active background color */
            color: #17153B; /* Active text color */
        }
    </style>
</head>
<body>
    <h2>Welcome, <%= session.getAttribute("username") %></h2>
    <a href="registerCustomer.jsp" class="button">Register Customer</a>
    <a href="listCustomer.jsp" class="button">List Customer</a>
    <a href="viewCustomers.jsp" class="button">View Customers</a>
    <a href="logout.jsp" class="button">Logout</a>
</body>
</html>
