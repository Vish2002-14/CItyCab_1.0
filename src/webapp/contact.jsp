<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contact Us - Mega City Cab</title>
  <link rel="stylesheet" href="css/contact.css">
</head>

<body>
<%@include file="WEB-INF/jspf/header.jsp"%>
<div class="header">
  Contact Mega City Cab
</div>

<div class="container">
  <!-- Contact Information -->
  <div class="contact-info">
    <h2>Get in Touch</h2>
    <p>📍 <strong>Address:</strong> 123 Main Street, Colombo City</p>
    <p>📞 <strong>Phone:</strong> +94 77 123 4567</p>
    <p>📧 <strong>Email:</strong> support@megacitycab.com</p>
    <p>🕒 <strong>Hours:</strong> 24/7 Service</p>
  </div>

  <!-- Contact Form -->
  <div class="contact-form">
    <h2>Send Us a Message</h2>
    <form action="" method="">
      <input type="text" name="name" placeholder="Your Name" required>
      <input type="email" name="email" placeholder="Your Email" required>
      <input type="text" name="subject" placeholder="Subject" required>
      <textarea name="message" placeholder="Your Message" required></textarea>
      <button type="submit">Send Message</button>
    </form>
  </div>
</div>

<!-- Google Map Showing Location in Colombo, Sri Lanka -->
<div class="map">
  <h2>Our Location</h2>
  <iframe
          src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31686.60740576439!2d79.8477500017836!3d6.927078909479716!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae25947b5e6d42f%3A0x9532f9c0bd603c82!2sColombo%2C%20Sri%20Lanka!5e0!3m2!1sen!2sus!4v1709586123456"
          width="100%"
          height="300"
          style="border:0;"
          allowfullscreen=""
          loading="lazy">
  </iframe>
</div>


</body>
</html>
