<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Transactions</title>
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
        .transaction {
            background-color: white; /* Container background */
            border-radius: 15px;
            padding: 20px;
            color: #17153B; /* Text color inside container */
            margin-bottom: 20px;
            display: inline-block;
            text-align: left;
            width: 300px; /* Fixed width for transaction containers */
        }
        .transaction p {
            margin: 5px 0;
        }
        .nav-links {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .nav-links a {
            text-decoration: none;
            color: white; /* Button text color */
            border: 2px solid #45FFCA; /* Button border color */
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease, color 0.3s ease;
            margin-bottom: 10px; /* Spacing between buttons */
            width: 250px; /* Fixed width for buttons */
            text-align: center; /* Center the text inside buttons */
        }
        .nav-links a:hover {
            background-color: #45FFCA; /* Hover background color */
            color: #17153B; /* Hover text color */
        }
        .nav-links a:active {
            background-color: #45FFCA; /* Active background color */
            color: #17153B; /* Active text color */
        }
    </style>
</head>
<body>
    <h2>Last 10 Transactions</h2>
    <%
        String accountNo = (String) session.getAttribute("account_no");
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankingsystem", "root", "believeinu23");
        PreparedStatement ps = con.prepareStatement("SELECT * FROM transactions WHERE customer_id=(SELECT customer_id FROM customer WHERE account_no=?) ORDER BY transaction_date DESC LIMIT 10");
        ps.setString(1, accountNo);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
    %>
        <div class="transaction">
            <p><strong>Date:</strong> <%= rs.getTimestamp("transaction_date") %></p>
            <p><strong>Amount:</strong> <%= rs.getDouble("amount") %></p>
            <p><strong>Type:</strong> <%= rs.getString("type") %></p>
        </div>
    <%
        }
    %>
    <div class="nav-links">
        <a href="viewCustomers.jsp">Back to Dashboard</a>
        <a href="DownloadPDFServlet">Download Transactions as PDF</a>
    </div>
</body>
</html>
