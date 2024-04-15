<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>V G Page</title>
    <link rel="icon" href="VG.jpg" type="image/x-icon">
    <style>
        /* Add this CSS to your <style> section in hotel.jsp */
        body {
           background-image: url('page.jpeg');
            background-size: cover; /* Ensures the image covers the entire background */
            background-repeat: no-repeat;
            background-attachment: fixed; /* Keeps the background fixed while scrolling */
            font-family: Arial, sans-serif;
            color: #333;
            margin: 0;
            padding: 0;
        }

        .booking-form-container {
            
            background-color: #fff;
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
        }

        h2 {
            color: #333;
            font-size: 24px; /* Increased font size for better emphasis */
            margin-bottom: 20px; /* Added margin for better separation */
        }

        .form-input {
            margin-bottom: 20px; /* Increased margin for better separation */
        }

        label {
            font-weight: bold;
            display: block; /* Display label as block for better alignment */
            margin-bottom: 5px; /* Added margin for better alignment */
        }

        input[type="text"],
        input[type="date"],
        input[type="number"],
        input[type="email"],
        input[type="tel"],
        select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-bottom: 10px; /* Added margin for better separation */
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

    </style>
</head>
<body>
    <div class="booking-form-container" id="bookingForm">
        <h2>Room Booking :</h2>
        <form action="confirm.jsp" method="post">
            <label for="roomType">Room Type:</label>
            <select name="roomType" id="roomType">
                <option value="Single">Single</option>
                <option value="Double">Double</option>
                <option value="Triple">Triple</option>
            </select><br>
                <div class="form-input">
                    Check-in Date: <input type="date" name="checkInDate" required>
                </div>
                <div class="form-input">
                    Check-out Date: <input type="date" name="checkOutDate" required>
                </div>
                <div class="form-input">
                    Number of Rooms: <input type="text" name="numberOfRooms" required>
                </div>
                <div class="form-input">
                    Name: <input type="text" name="name" required>
                </div>
                <div class="form-input">
                    Email: <input type="email" name="email" required>
                </div>
                <div class="form-input">
                    Phone Number: <input type="tel" name="phone" required>
                </div>
                <div class="form-input">
                    Payment Method:
                    <select name="paymentMethod" required>
                        <option value="Net Banking">Netbanking</option>
                        <option value="UPI">UPI</option>
                    </select>
                </div>
                
                <p id="total-price" class="rp"></p>
                <div>
                    <input type="submit" value="Confirm" name="submitButton">
                </div>
            </div>
        </form>
    </div>
    
    <%-- JSP Scriptlet to Handle Form Submission --%>
    <%
        if ("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("submitButton") != null) {
            String roomType = request.getParameter("roomType");
            String checkInDate = request.getParameter("checkInDate");
            String checkOutDate = request.getParameter("checkOutDate");
            String numberOfRoomsStr = request.getParameter("numberOfRooms");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String paymentMethod = request.getParameter("paymentMethod");
            // Validate and parse the number of rooms
            int numberOfRooms = 0;
            try {
                numberOfRooms = Integer.parseInt(numberOfRoomsStr);
            } catch (NumberFormatException e) {
                out.println(e.getMessage());
            }

            // Store form data in session
            session.setAttribute("roomType", roomType);
            session.setAttribute("checkInDate", checkInDate);
            session.setAttribute("checkOutDate", checkOutDate);
            session.setAttribute("numberOfRooms", numberOfRooms);
            session.setAttribute("name", name);
            session.setAttribute("email", email);
            session.setAttribute("phone", phone);
            session.setAttribute("paymentMethod", paymentMethod);

            // Redirect to confirm.jsp
            response.sendRedirect("confirm.jsp");
        }
    %>
</body>
</html>
