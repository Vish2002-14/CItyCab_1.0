<%@ page import="com.servlet.carsales.model.Booking" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Bookings</title>
    <link rel="stylesheet" href="css/viewBookings.css">
<%@include file="../WEB-INF/jspf/headerForAdmin.jsp"%>
<body>
<h2>All Bookings</h2>
<form action="viewBookings" method="get">
    <input type="text" name="search" placeholder="Search by Order ID, Customer Email">
    <button type="submit">Search</button>
</form>
<table>
    <tr>
        <th>ID</th>
        <th>Customer Name</th>
        <th>Email</th>
        <th>Car Number</th>
        <th>Distance</th>
        <th>Total Amount</th>
    </tr>
    <% if (request.getAttribute("bookings") == null) {
        response.sendRedirect("viewBookings");
        return;
    } %>
    <% List<Booking> bookings = (List<Booking>) request.getAttribute("bookings"); %>
    <% if (bookings != null && !bookings.isEmpty()) { %>
    <% for (Booking booking : bookings) { %>
    <tr>
        <td><%= booking.getId() %></td>
        <td><%= booking.getCustomerName() %></td>
        <td><%= booking.getCustomerEmail() %></td>
        <td><%= booking.getCarNumber() %></td>
        <td><%= booking.getDistance() %> km</td>
        <td><%= booking.getTotal() %></td>
    </tr>
    <% } %>
    <% } else { %>
    <tr>
        <td colspan="6">No bookings found</td>
    </tr>
    <% } %>
</table>
</body>
</html>
