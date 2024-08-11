<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Deposit</title>
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
            margin-bottom: 10px;
        }
        input[type="text"] {
            width: calc(100% - 22px); /* Full width minus padding and border */
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: transparent; /* Transparent background initially */
            color: black; /* Text color */
            border: 2px solid #45FFCA; /* Border color */
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease, color 0.3s ease;
            cursor: pointer;
            width: 100%; /* Full width */
            display: block;
        }
        input[type="submit"]:hover {
            background-color: #45FFCA; /* Hover background color */
            color: #17153B; /* Hover text color */
        }
        input[type="submit"]:active {
            background-color: #45FFCA; /* Active background color */
            color: #17153B; /* Active text color */
        }
    </style>
</head>
<body>
    <h2>Deposit Amount</h2>
    <form action="DepositServlet" method="post">
        <label for="amount">Amount:</label>
        <input type="text" id="amount" name="amount"><br><br>
        <input type="submit" value="Deposit">
    </form>
</body>
</html>
