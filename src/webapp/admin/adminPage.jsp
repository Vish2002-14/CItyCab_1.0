<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="css/adminPage.css">
</head>
<%@include file="../WEB-INF/jspf/headerForAdmin.jsp"%>
<body>

<div class="header">
    Admin Dashboard
</div>

<div class="container">
    <div class="card">
        <img src="images/car-type.png" alt="Manage Car Type">
        <h2>Manage Car Type</h2>
        <button onclick="location.href='manageCarType.jsp'">Go to Page</button>
    </div>

    <div class="card">
        <img src="images/car-details.png" alt="Manage Car Details">
        <h2>Manage Car Details</h2>
        <button onclick="location.href='manageCars.jsp'">Go to Page</button>
    </div>

    <div class="card">
        <img src="images/driver.png" alt="Manage Driver Details">
        <h2>Manage Driver Details</h2>
        <button onclick="location.href='manageDrivers.jsp'">Go to Page</button>
    </div>

    <div class="card">
        <img src="images/bookings.png" alt="View Bookings">
        <h2>View Bookings</h2>
        <button onclick="location.href='viewBookings.jsp'">Go to Page</button>
    </div>
</div>

</body>
</html>
