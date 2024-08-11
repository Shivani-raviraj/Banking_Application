<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>viewCustomers</title>
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
        .dashboard-info {
            background-color: white; /* Container background */
            border-radius: 15px;
            padding: 20px;
            color: #17153B; /* Text color inside container */
            margin-bottom: 30px;
            display: inline-block;
            text-align: left;
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
            width: 200px; /* Fixed width for buttons */
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
    <h2>Welcome, Customer</h2>
    <div class="dashboard-info">
    <%
        String accountNo = (String) session.getAttribute("account_no");
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankingsystem", "root", "believeinu23");
        PreparedStatement ps = con.prepareStatement("SELECT * FROM customer WHERE account_no=?");
        ps.setString(1, accountNo);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            out.print("Account No: " + rs.getString("account_no") + "<br>");
            out.print("Balance: " + rs.getDouble("initial_balance") + "<br>");
        }
    %>
    </div>
    <div class="nav-links">
        <a href="viewTransactions.jsp">View Transactions</a>
        <a href="deposit.jsp">Deposit</a>
        <a href="withdraw.jsp">Withdraw</a>
        <a href="closeAccount.jsp">Close Account</a>
        <a href="logout.jsp">Logout</a>
    </div>
</body>
</html>
