<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 3/4/2025
  Time: 3:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<style>

  {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
  }


  header {
    background-color: #333;
    color: white;
    padding: 15px 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }

  header h1 {
    font-size: 24px;
  }

  nav {
    display: flex;
    gap: 20px;
  }

  nav a {
    color: white;
    text-decoration: none;
    font-weight: bold;
  }

  nav a:hover {
    text-decoration: underline;
  }

  header button {
    background-color: #ff4d4d; /* Red color for logout button */
    color: white;
    border: none;
    padding: 10px 20px;
    font-weight: bold;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  header button:hover {
    background-color: #cc0000; /* Darker red on hover */
  }
</style>



<header>
  <h1>City Cab</h1>
  <nav>
    <a href="../index.jsp">Home</a>
    <a href="../aboutUs.jsp">About Us</a>
    <a href="../availableCars.jsp">Vehicles</a>
    <a href="../register.jsp">Register</a>
    <a href="../logout.jsp">
      <button>Logout</button>
    </a>

  </nav>
</header>
</body>
</html>
