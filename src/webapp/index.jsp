<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mega City Cab - Home</title>
    <link rel="stylesheet" href="css/index.css">

</head>
<body>

<%@include file="WEB-INF/jspf/header.jsp"%>

<section class="hero">
    <h2>Welcome to Mega City Cab!</h2>
    <p>Your trusted ride partner in Colombo City, providing top-class service every time.</p>
    <a href="#book" class="btn">Book Your Ride</a>
</section>

<section class="options">
    <a href="availableCars.jsp">Book a Cab</a>
    <a href="viewBookingDetails.jsp">My Bookings</a>
    <a href="contact.jsp">Contact Us</a>
</section>

<section class="cab-list">
    <div class="cab-item">
        <img src="images/Sedan.jpeg" alt="Sedan">
        <h3>Sedan</h3>
        <p>Perfect for city commuting and business trips</p>
        <ul>
            <li><strong>Seats:</strong> 4 passengers</li>
            <li><strong>Luggage:</strong> 2 large bags</li>
            <li><strong>Features:</strong> Air-conditioning, music system, comfortable seating</li>
            <li><strong>Ideal for:</strong> Daily office commutes, business travel</li>
        </ul>
        <a href="availableCars.jsp" class="btn">Book Now</a>
    </div>

    <div class="cab-item">
        <img src="images/Suv.jpeg" alt="SUV">
        <h3>SUV</h3>
        <p>Spacious and ideal for family vacations</p>
        <ul>
            <li><strong>Seats:</strong> 6-7 passengers</li>
            <li><strong>Luggage:</strong> 4 large bags</li>
            <li><strong>Features:</strong> High ground clearance, all-terrain capability, advanced safety</li>
            <li><strong>Ideal for:</strong> Family road trips, long-distance travel, rough terrain</li>
        </ul>
        <a href="availableCars.jsp" class="btn">Book Now</a>
    </div>

    <div class="cab-item">
        <img src="images/luxury.jpeg" alt="Luxury">
        <h3>Luxury</h3>
        <p>For an unforgettable luxury ride experience</p>
        <ul>
            <li><strong>Seats:</strong> 4 passengers</li>
            <li><strong>Luggage:</strong> 2-3 large bags</li>
            <li><strong>Features:</strong> Leather seats, premium sound system, climate control</li>
            <li><strong>Ideal for:</strong> Corporate travel, special occasions, VIP service</li>
        </ul>
        <a href="availableCars.jsp" class="btn">Book Now</a>
    </div>

    <div class="cab-item">
        <img src="images/van.jpeg" alt="Van">
        <h3>Van</h3>
        <p>Ideal for group travel with extra space</p>
        <ul>
            <li><strong>Seats:</strong> 10-12 passengers</li>
            <li><strong>Luggage:</strong> 6 large bags</li>
            <li><strong>Features:</strong> Spacious seating, air-conditioning, entertainment system</li>
            <li><strong>Ideal for:</strong> Group travel, airport transfers, tours</li>
        </ul>
        <a href="availableCars.jsp" class="btn">Book Now</a>
    </div>

    <div class="cab-item">
        <img src="images/electric.jpeg" alt="Electric Car">
        <h3>Electric Car</h3>
        <p>Eco-friendly and efficient urban transport</p>
        <ul>
            <li><strong>Seats:</strong> 4 passengers</li>
            <li><strong>Luggage:</strong> 2 medium bags</li>
            <li><strong>Features:</strong> Zero emissions, quiet ride, modern technology</li>
            <li><strong>Ideal for:</strong> Eco-conscious commuters, city rides</li>
        </ul>
        <a href="availableCars.jsp" class="btn">Book Now</a>
    </div>
</section>


</body>
</html>
