<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*, javax.mail.*, javax.mail.internet.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>V G Email Confirmation</title>
    <link rel="icon" href="VG.jpg" type="image/x-icon">
    <style>
        body {
            background-image: url('cofirm.png');
            font-family: Arial, sans-serif;
            
            margin: 0;
            padding: 0;
        }

        .container {
            
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f0f0f0;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        }

        h1 {
            color: #007BFF;
            font-size: 28px;
            margin-top: 0;
        }

        h2 {
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
        }

        p {
            font-size: 18px;
            margin: 10px 0;
        }

        .success-message {
            color: #28a745;
            font-weight: bold;
            font-size: 24px;
        }

        .error-message {
            color: #dc3545;
            font-weight: bold;
            font-size: 24px;
        }
    </style>
</head>
<body>
    <div class="container">

        <%
            // Email Configuration
            String host = "smtp.gmail.com"; // SMTP server for Gmail
            String port = "587"; // Port for TLS
            String emailUsername = "vishwakannan2003@gmail.com"; // Your Gmail email address
            String emailPassword = "hscpfpvqzhiwlhve"; // Your Gmail password

            // Recipient email address
            String recipientEmail = "2112017@nec.edu.in"; // Recipient's email address

            // Set properties
            Properties properties = new Properties();
            properties.put("mail.smtp.host", host);
            properties.put("mail.smtp.port", port);
            properties.put("mail.smtp.auth", "true");
            properties.put("mail.smtp.starttls.enable", "true");

            // Create a session with your email credentials
            Session emailSession = Session.getInstance(properties, new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(emailUsername, emailPassword);
                }
            });

            // Create and send the email
            try {
                Message message = new MimeMessage(emailSession);
                message.setFrom(new InternetAddress(emailUsername));
                message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipientEmail));
                message.setSubject("Booking Confirmation");
                
                // Retrieve session-stored variables
                String name = (String) session.getAttribute("name");
                String email = (String) session.getAttribute("email");
                String phone = (String) session.getAttribute("phone");
                String paymentMethod = (String) session.getAttribute("paymentMethod");
                String roomType = (String) session.getAttribute("roomType");
                String checkInDate = (String) session.getAttribute("checkInDate");
                String checkOutDate = (String) session.getAttribute("checkOutDate");
                String numberOfRooms = (String) session.getAttribute("numberOfRooms");
                String totalPrice = (String) session.getAttribute("totalPrice");

                // Create the email message body with session data
                String emailMessage = "Booking Details:\n" +
                                      "Name: " + name + "\n" +
                                      "Email: " + email + "\n" +
                                      "Phone Number: " + phone + "\n" +
                                      "Payment Method: " + paymentMethod + "\n" +
                                      "Room Type: " + roomType + "\n" +
                                      "Check-in Date: " + checkInDate + "\n" +
                                      "Check-out Date: " + checkOutDate + "\n" +
                                      "Number of Rooms: " + numberOfRooms + "\n" +
                                      "Total Price: ₹" + totalPrice + " for 1 day";

                message.setText(emailMessage);

                // Send the message
                Transport.send(message);

                // Display a success message
                %>
                <p class="success-message">Booking Confirmed &#10003;</p>
                <%
            } catch (MessagingException e) {
                e.printStackTrace();
                // Handle the email sending error
                %>
                <p class="error-message">Email sending failed. Please try again later.</p>
                <%
            }
        %>
    </div>
    <div class="container">
        <h1>Booking Successful</h1>
        <p>Your booking has been successfully confirmed, and a confirmation email has been sent.</p>
        <p><a href="success.jsp" class="return-link">Return to Home</a></p>
        <p class="thank-you">Thank you!</p>
    </div>
</body>
</html>
