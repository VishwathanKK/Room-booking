<%-- 
    Document   : hotel.jsp
    Created on : 28-Sept-2023, 11:44:38 am
    Author     : Vishwa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>V G HOTEL BOOKING</title>
    <link rel="icon" href="VG.jpg" type="image/x-icon">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #64c8b3; /* Changed to a more readable background color */
            color: #333;
            margin: 0;
            padding: 0;
        }

        /* Header Styles */
        .header {
            text-align: center;
            margin-bottom: 20px;
        }

        .header img {
            max-width: 100%; /* Ensure the image scales with the container */
            border: 5px solid black;
            border-radius: 5px;
        }

        /* Heading Styles */
        h1 {
            text-align: center;
            color: #333;
            margin-top: 30px;
            font-size: 36px; /* Increased font size for better readability */
        }

        h2 {
            margin-bottom: 10px;
            color: #333;
        }

        /* Room Styles */
        .room {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
            background-color: #fff;
            padding: 20px; /* Reduced padding for a cleaner look */
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .room-image {
            width: 300px;
            height: 200px;
            margin-right: 20px;
            border: 5px solid black;
            border-radius: 5px;
            background-size: cover; /* Ensure the image covers the container */
        }

        .room-details {
            flex-grow: 1;
        }

        /* Button Styles */
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s; /* Smooth hover transition */
        }

        input[type="submit"]:hover {
            background-color: #d43414;
        }

        /* Footer Styles */
        footer {
            background-color: #333;
            color: #fff;
            padding: 30px;
            text-align: center;
        }

        .footer-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .footer-left img {
            width: 30px;
            height: 30px;
            margin-right: 10px;
        }

        /* Social Media Styles */
        .social-media img {
            width: 50px;
            height: 50px;
            margin-right: 10px; /* Added margin between social media icons */
        }

        /* Copyright Styles */
        .empty-space {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 20px;
        }

        .empty-space p {
            margin: 0;
        }

    </style>
</head>
    <div class="header">
        <img src="VG.jpg" alt="Hotel Image">
    </div>

    <h1>V G HOTEL BOOKING.COM</h1>
    <h2>Star Rating: ⭐⭐⭐⭐⭐</h2>
    <h2>Free Cancellation: Available until 24 hrs before check-in</h2>

    <section class="room-images">

        <div class="room">
            <div class="room-image" onclick="openBookingForm('Single', 1000)"
                style="background-image: url('Room-Type-Single-Room.jpg');">
            </div>
            <div class="room-details">
                <h2>Single</h2>
                <p>Room facilities: Pool or mountain views, terrace, telephone, flat screen TV with satellite channels, free safe, hot/cold air conditioned, desk, parquet floor, wardrobe, mini fridge , hairdryer, free toiletries, gel / shampoo dispenser and bathtub.</p>
                <p>Price: ₹ 1000 per day</p>
                <form action="form.jsp" method="post">
                    <input type="submit" value="Book">
                </form>
            </div>
        </div>

        <div class="room">
            <div class="room-image" onclick="openBookingForm('Double', 2000)"
                style="background-image: url(doublebedroom.jpg);background-size: cover;">
            </div>
            <div class="room-details">
                <h2>Double</h2>
                <p>Room facilities: Pool or mountain views, terrace, telephone, flat screen TV with satellite channels, free safe, hot/cold air conditioned, desk, parquet floor, wardrobe, mini fridge , hairdryer, free toiletries, gel / shampoo dispenser and bathtub.</p>
                <p>Price: ₹ 2000 per day</p>
                <form action="form.jsp" method="post">
                    <input type="submit" value="Book">
                </form>
            </div>
        </div>

        <div class="room">
            <div class="room-image" onclick="openBookingForm('Triple', 3000)"
                style="background-image: url('1a4601375472a5d70877c5ccd53556d5.jpg');background-size: cover;">
            </div>
            <div class="room-details">
                <h2>Triple</h2>
                <p>Room facilities: Pool or mountain views, terrace, telephone, flat screen TV with satellite channels, free safe, hot/cold air conditioned, desk, parquet floor, wardrobe, mini fridge , hairdryer, free toiletries, gel / shampoo dispenser and bathtub.</p>
                <p>Price: ₹ 3000 per day</p>
                <form action="form.jsp" method="post">
                    <input type="submit" value="Book">
                </form>
            </div>
        </div>

    </section>

    <footer>
        <div class="footer-content">
            <div class="footer-left">
                <img src="VG.jpg" alt="Hotel Image">
            </div>
            
            <div class="footer-center">
                <h4>Contact us:</h4>
                <div>Hotel Address: 123 V G NAGAR, TUTICORIN - TIRUNELVELI MAIN ROAD, INDIA</div>
                <div><i class="fas fa-envelope"></i> Email: VGBooking@gmail.com</div>
                <div><i class="fas fa-phone"></i> Phone: +91-9876543210</div>
                <div class="parking">
                    Parking: Available
                </div>
            </div>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">

            <div class="footer-right">
                <div class="social-media">
                    <h4>Follow us :</h4>
                    <a href="https://instagram.com/vg_hotelbooking?igshid=MzMyNGUyNmU2YQ==">
                        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/1024px-Instagram_icon.png" alt="Instagram Logo">
                    </a>
                    <a href="https://www.facebook.com">
                        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/F_icon.svg/1024px-F_icon.svg.png" alt="Facebook Logo">
                    </a>
                </div>
            </div>
        </div>
    </footer>
    
    

    

    <div class="empty-space">
        <p>Copyright &copy; 2023 - V G HOTEL BOOKING</p>
    </div>

    
</body>
</html>
<style>
    
    .empty-space {
        background-color: #333; /* Background color */
        color: #fff; /* Text color */
        text-align: center;
        padding: 20px;
    }

    .empty-space p {
        margin: 0; /* Remove default margin */
    }
</style>
