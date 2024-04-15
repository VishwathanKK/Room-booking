<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>V G Booking Successful</title>
    <link rel="icon" href="VG.jpg" type="image/x-icon">
    <style>
        body {
            background-image: url('success.jpg');
            font-family: Arial, sans-serif;
            background-color:  #64c8b3;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            max-width: 600px;
            margin: 10px;
            padding: 20px;
            background-color: #f0f0f0;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3); /* Add a box shadow for the 3D border effect */
        }


        h1 {
            color: #007BFF;
            font-size: 28px;
            margin-top: 0;
            text-align: center;
        }

        h2 {
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
            text-align: center;
        }

        p {
            font-size: 18px;
            margin: 10px 0;
            text-align: center;
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

        /* Style for the return link */
        .return-link {
            color: #007BFF;
            text-decoration: none;
            font-weight: bold;
        }

        .return-link:hover {
            text-decoration: underline;
        }

        .thank-you {
            font-weight: bold;
            font-style: italic;
            font-size: 50px;
        }
        .visit{
            font-weight:bolder;
            font-style: initial;
            font-size: 30px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Booking Successful</h1>
        <p class="visit">VISIT AGAIN</p>
        <p><a href="hotel.jsp" class="return-link">Return to Home</a></p>
        <p class="thank-you">Thank you!</p>
    </div>
</body>
</html>
