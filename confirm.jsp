<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>V G Confirmation</title>
    <link rel="icon" href="VG.jpg" type="image/x-icon">
    <style>
        body {
            
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        .container {
            
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

        h1, h2 {
            font-size: 24px;
            margin: 0;
        }
        h3{
            font-weight:bold;
            color: black;
        }
        h1 {
            color: #333;
            font-size: 28px;
        }

        h2 {
            color: #007BFF;
        }

        p {
            font-size: 18px;
            margin: 10px 0;
        }

        .btn {
            background-color: #007BFF;
            color: #fff;
            padding: 12px 24px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
            text-decoration: none;
            display: inline-block;
            transition: background-color 0.3s;
            margin-top: 20px;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        .details {
            border-top: 1px solid #ccc;
            padding-top: 20px;
        }

    </style>
</head>
<body>
    <div class="container">
        <h1>Confirmation Page</h1>
        <h2>Booking Details:</h2>
        <p><h3>Name:</h3> <%= request.getParameter("name") %></p>
        <p><h3>Email:</h3> <%= request.getParameter("email") %></p>
        <p><h3>Phone Number:</h3> <%= request.getParameter("phone") %></p>
        <p><h3>Payment Method:</h3> <%= request.getParameter("paymentMethod") %></p>
        <p><h3>Room Type:</h3> <%= request.getParameter("roomType") %></p>
        <p><h3>Check-in Date:</h3> <%= request.getParameter("checkInDate") %></p>
        <p><h3>Check-out Date:</h3> <%= request.getParameter("checkOutDate") %></p>

        <%
            String h=request.getParameter("numberOfRooms");
            session.setAttribute("numberOfRooms",h);
        // Retrieve room type and number of rooms
        String roomType = request.getParameter("roomType");
        int numberOfRooms = Integer.parseInt(request.getParameter("numberOfRooms"));

        // Calculate room rate based on room type
        int roomRate = 0;
        if ("Single".equalsIgnoreCase(roomType)) {
            roomRate = 1000;
        } else if ("Double".equalsIgnoreCase(roomType)) {
            roomRate = 2000;
        } else if ("Triple".equalsIgnoreCase(roomType)) {
            roomRate = 3000;
        }

        // Calculate total price
        int totalPrice = roomRate * numberOfRooms;
        String a=request.getParameter("name");
        String b=request.getParameter("email");
        String c=request.getParameter("phone");
        String d=request.getParameter("paymentMethod");
        String e=request.getParameter("roomType");
        String f=request.getParameter("checkInDate");
        String g=request.getParameter("checkOutDate");
        
        String i=String.valueOf(totalPrice);
        session.setAttribute("name", a);
        session.setAttribute("email", b);
        session.setAttribute("phone", c);
        session.setAttribute("paymentMethod",d);
        session.setAttribute("roomType", e);
        session.setAttribute("checkInDate",f);
        session.setAttribute("checkOutDate",g);
        
        session.setAttribute("totalPrice", i);
        %>

        <p><h3>Total Price:</h3> ₹<%= totalPrice %> for 1 day</p>

        <div class="details">
            <!-- Other booking details here -->
           
            <form action="sendEmail.jsp" method="post">
                <input type="submit" value="Confirm Booking" class="btn">
            </form>
        </div>
    </div>
</body>
</html>
