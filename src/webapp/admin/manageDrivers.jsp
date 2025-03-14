

<%@ page import="com.servlet.carsales.model.Driver" %>
<%@ page import="java.util.List" %>
<%@ page import="com.servlet.carsales.model.Car" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Driver Management</title>
    <link rel="stylesheet" href="css/manageCars.css">
</head>
<%@include file="../WEB-INF/jspf/headerForAdmin.jsp"%>
<body>
<div class="container">
    <h1>Driver Management</h1>

    <%-- Display Error Messages (if any) --%>
    <%
        String errorMessage = (String) session.getAttribute("errorMessage");
        if (errorMessage != null) {
    %>
    <div class="error-message">
        <%= errorMessage %>
    </div>
    <%
            session.removeAttribute("errorMessage"); // Clear message after displaying
        }
    %>

    <style>
        .error-message {
            color: red;
            font-weight: bold;
            margin-bottom: 15px;
            text-align: center;
            background: #ffe6e6;
            padding: 10px;
            border: 1px solid red;
            border-radius: 5px;
        }
    </style>

    <%-- Driver Form --%>
    <form id="driverForm" action="<%= request.getContextPath() %>/admin/driver-management" method="post">
        <h2 id="formTitle">Add New Driver</h2>

        <input type="hidden" id="id" name="id">

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="address">Address:</label>
        <input type="text" id="address" name="address" required>

        <label for="licenseNumber">License Number:</label>
        <input type="text" id="licenseNumber" name="licenseNumber" required>

        <label for="phoneNumber">Phone Number:</label>
        <input type="text" id="phoneNumber" name="phoneNumber" required>

        <%
            if (request.getAttribute("carList") == null) {
                response.sendRedirect("driver-management");
                return;
            }
        %>

        <%-- Car Assignment Dropdown --%>
        <label for="carId">Assign Car:</label>
        <select id="carId" name="carId" required <%= (request.getAttribute("carList") == null || ((List<Car>) request.getAttribute("carList")).isEmpty()) ? "disabled" : "" %>>
            <%
                List<Car> carList = (List<Car>) request.getAttribute("carList");
                if (carList == null || carList.isEmpty()) {
            %>
            <option value="">No cars available</option>
            <% } else { %>
            <option value="">-- Select Car --</option>
            <% for (Car car : carList) { %>
            <option value="<%= car.getId() %>"><%= car.getCarNumber() %> - <%= car.getModel() %></option>
            <% } %>
            <% } %>
        </select>

        <input type="hidden" id="action" name="action" value="add">
        <button type="submit" id="submitButton" <%= (carList == null || carList.isEmpty()) ? "disabled" : "" %>>Add Driver</button>
    </form>

    <%-- Driver Details Table --%>
    <h2>Driver Details</h2>
    <table id="driverTable">
        <thead>
        <tr>
            <th>Name</th>
            <th>Address</th>
            <th>License Number</th>
            <th>Phone Number</th>
            <th>Assigned Car ID</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<Driver> driverList = (List<Driver>) request.getAttribute("driverList");
            if (driverList != null && !driverList.isEmpty()) {
                for (Driver driver : driverList) {
        %>
        <tr>
            <td><%= driver.getName() %></td>
            <td><%= driver.getAddress() %></td>
            <td><%= driver.getLicenseNumber() %></td>
            <td><%= driver.getPhoneNumber() %></td>
            <td><%= driver.getCarId() %></td>
            <td>
                <button class="edit"
                        onclick="editDriver('<%= driver.getId() %>', '<%= driver.getName() %>', '<%= driver.getAddress() %>', '<%= driver.getLicenseNumber() %>', '<%= driver.getPhoneNumber() %>', '<%= driver.getCarId() %>')">Edit</button>
                <form action="driver-management" method="post" style="display:inline;">
                    <input type="hidden" name="action" value="delete">
                    <input type="hidden" name="id" value="<%= driver.getId() %>">
                    <button type="submit">Delete</button>
                </form>
            </td>
        </tr>
        <%
            }
        } else {
        %>
        <tr>
            <td colspan="6">No drivers available.</td>
        </tr>
        <% } %>
        </tbody>
    </table>
</div>

<script src="js/manageDriver.js"></script>
</body>
</html>

