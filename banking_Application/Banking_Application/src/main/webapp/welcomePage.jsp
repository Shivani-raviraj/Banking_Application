<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to BankingSystem</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #17153B; /* Updated background color */
        color: white; /* Text color */
        text-align: center;
        padding: 50px;
    }
    h2 {
        font-size: 2.5em;
        margin-bottom: 20px;
    }
    .button {
        background-color: transparent; /* Transparent background initially */
        color: white; /* Text color */
        border: 2px solid #45FFCA; /* Border color */
        padding: 10px 20px;
        border-radius: 5px;
        margin: 10px 0;
        transition: background-color 0.3s ease, color 0.3s ease;
        cursor: pointer;
        display: block; /* Ensuring buttons appear one by one */
        width: 200px; /* Adjust width as needed */
        margin-left: auto; /* Center align */
        margin-right: auto; /* Center align */
        text-decoration: none; /* Remove underline */
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
<h2>Welcome to BankingSystem</h2>
<a href="login.jsp" target="_blank" class="button">Admin Page</a><br>
<a href="customerLogin.jsp" target="_blank" class="button">Customer Page</a>
</body>
</html>
