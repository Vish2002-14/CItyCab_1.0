<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.HttpSession" %>

<style>
    /* Header-specific styles */
    header {
        background-color: #333; /* Dark header background */
        color: white;
        padding: 15px 20px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        position: fixed;
        top: 0;
        width: 100%;
        z-index: 1000;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
    }

    header h1 {
        font-size: 28px;
        font-weight: bold;
        letter-spacing: 2px;
    }

    nav {
        display: flex;
        gap: 20px;
        align-items: center;
    }

    nav a {
        color: white;
        text-decoration: none;
        font-weight: bold;
        transition: color 0.3s ease;
    }

    nav a:hover {
        text-decoration: underline;
        color: #4d79ff;
    }

    header button {
        color: white;
        border: none;
        padding: 10px 20px;
        font-weight: bold;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    header button.logout {
        background-color: #ff4d4d;
    }

    header button.logout:hover {
        background-color: #cc0000;
    }

    header button.login {
        background-color: #4d79ff;
    }

    header button.login:hover {
        background-color: #0040ff;
    }

    /* For consistency across pages */
    body {
        background-color: #f5f5f5;
        margin: 0;
        padding: 0;
    }
</style>

<header>
    <h1>City Cab</h1>
    <nav>
        <a href="index.jsp">Home</a>
        <a href="aboutUs.jsp">About Us</a>
        <a href="availableCars.jsp">Vehicles</a>
        <a href="register.jsp">Register</a>
        <a href="viewBookingDetails.jsp">Booking Details</a>

        <%
            HttpSession userSession = request.getSession(false);
            String userEmail = (userSession != null) ? (String) userSession.getAttribute("email") : null;

            if (userEmail != null) {
        %>
        <a href="logout.jsp">
            <button class="logout">Logout</button>
        </a>
        <% } else { %>
        <a href="login.jsp">
            <button class="login">Login</button>
        </a>
        <% } %>
    </nav>
</header>
