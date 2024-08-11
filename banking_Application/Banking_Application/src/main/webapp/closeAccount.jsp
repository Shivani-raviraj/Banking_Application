<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Close Account</title>
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
        form {
            background-color: white; /* Form container background */
            border-radius: 15px;
            padding: 40px 20px; /* Adjusted padding for better fit */
            display: inline-block;
            text-align: left; /* Align text to the left */
            color: #17153B; /* Form text color */
            width: 300px; /* Adjusted width for better fit */
        }
        label {
            display: block;
            margin-bottom: 20px;
        }
        a {
            display: block;
            background-color: transparent; /* Transparent background initially */
            color: black; /* Text color */
            border: 2px solid #45FFCA; /* Border color */
            padding: 10px 20px;
            border-radius: 5px;
            margin: 10px auto; /* Center align and margin between buttons */
            transition: background-color 0.3s ease, color 0.3s ease;
            text-decoration: none; /* Remove underline */
            width: 100%; /* Full width */
            text-align: center;
            box-sizing: border-box; /* Include padding and border in element's total width and height */
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
    <h2>Close Account</h2>
    <form action="CloseAccountServlet" method="post">
        <label for="confirm">Are you sure you want to close your account?</label><br><br>
        <a href="welcomePage.jsp">Yes</a>
        <a href="viewCustomers.jsp">No</a>
    </form>
</body>
</html>
