<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Customers</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #17153B; /* Background color */
            color: white; /* Text color */
            margin: 0;
            padding: 20px;
        }
        h2 {
            color: #45FFCA; /* Title color */
            text-align: center;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            background-color: white; /* Table background color */
            color: #333; /* Table text color */
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #45FFCA; /* Header background color */
            color: black;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
            
        }
        tr:hover {
            background-color: #ddd;
        }
        .back-link {
            display: inline-block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            background-color: white; /* Button background color */
            border: 2px solid #45FFCA; /* Button border color */
            color: #17153B; /* Button text color */
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease, color 0.3s ease;
            cursor: pointer;
        }
        .back-link:hover {
            background-color: #45FFCA; /* Hover background color */
            color: #17153B; /* Hover text color */
        }
        .back-link:active {
            background-color: #45FFCA; /* Active background color */
            color: #17153B; /* Active text color */
        }
    </style>
</head>
<body>
    <h2>Customer List</h2>
    <table>
        <tr>
            <th>Customer ID</th>
            <th>Full Name</th>
            <th>Address</th>
            <th>Mobile No</th>
            <th>Email ID</th>
            <th>Account Type</th>
            <th>Initial Balance</th>
            <th>Date of Birth</th>
            <th>Account No</th>
        </tr>
        <%
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankingsystem", "root", "believeinu23");
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM customer");
                
                while (rs.next()) {
        %>
                    <tr>
                        <td><%= rs.getInt("customer_id") %></td>
                        <td><%= rs.getString("full_name") %></td>
                        <td><%= rs.getString("address") %></td>
                        <td><%= rs.getString("mobile_no") %></td>
                        <td><%= rs.getString("email_id") %></td>
                        <td><%= rs.getString("account_type") %></td>
                        <td><%= rs.getDouble("initial_balance") %></td>
                        <td><%= rs.getDate("dob") %></td>
                        <td><%= rs.getString("account_no") %></td>
                    </tr>
        <%
                }
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </table>
    <a href="adminDashboard.jsp" class="back-link">Back to Dashboard</a>
</body>
</html>
