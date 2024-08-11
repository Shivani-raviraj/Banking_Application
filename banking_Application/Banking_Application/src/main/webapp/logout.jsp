<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Session Invalidated</title>
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
        p {
            font-size: 1.2em;
            margin-top: 20px;
        }
        a {
            display: inline-block;
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
        a:hover {
            background-color: #45FFCA; /* Hover background color */
            color: #17153B; /* Hover text color */
        }
        a:active {
            background-color: #45FFCA; /* Active background color */
            color: #17153B; /* Active text color */
        }
    </style>
</head>
<body>
    <h2>Session Invalidated</h2>
    <p>Your session has been successfully invalidated.</p>
    <p><a href="login.jsp">Click here to login again</a></p>
</body>
</html>
