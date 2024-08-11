<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register Customer</title>
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
            width: 350px; /* Adjusted width for better fit */
        }
        label {
            display: block;
            margin-bottom: 10px;
        }
        input[type="text"], input[type="date"], select, textarea {
            width: calc(100% - 22px); /* Full width minus padding and border */
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        textarea {
            height: 100px;
            resize: none;
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
    <h2>Register Customer</h2>
    <form action="RegisterCustomerServlet" method="post">
        <label for="full_name">Full Name:</label>
        <input type="text" id="full_name" name="full_name"><br><br>
        <label for="address">Address:</label>
        <textarea id="address" name="address"></textarea><br><br>
        <label for="mobile_no">Mobile No:</label>
        <input type="text" id="mobile_no" name="mobile_no"><br><br>
        <label for="email_id">Email ID:</label>
        <input type="text" id="email_id" name="email_id"><br><br>
        <label for="account_type">Account Type:</label>
        <select id="account_type" name="account_type">
            <option value="Saving">Saving</option>
            <option value="Current">Current</option>
        </select><br><br>
        <label for="initial_balance">Initial Balance:</label>
        <input type="text" id="initial_balance" name="initial_balance"><br><br>
        <label for="date_of_birth">Date of Birth:</label>
        <input type="date" id="date_of_birth" name="date_of_birth"><br><br>
        <label for="id_proof">ID Proof:</label>
        <input type="text" id="id_proof" name="id_proof"><br><br>
        <input type="submit" value="Register">
    </form>
</body>
</html>
