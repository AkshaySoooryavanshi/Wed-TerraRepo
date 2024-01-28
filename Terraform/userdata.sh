#!/bin/bash
apt update
apt install -y apache2

# Install the AWS CLI
apt install -y awscli

# Create an enhanced HTML file with a "mystery universe" theme using CSS
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Mystery Universe</title>
  <style>
    body {
      font-family: 'Arial', sans-serif;
      margin: 0;
      padding: 0;
      height: 100vh;
      background: #000011; /* Dark blue background resembling the night sky */
      background: radial-gradient(ellipse at bottom, #1b2735 0%, #090a0f 100%);
      color: #ffffff; /* White text color for contrast */
      display: flex;
      justify-content: center;
      align-items: center;
    }
    .container {
      max-width: 600px;
      text-align: center;
      padding: 20px;
      background-color: rgba(0, 0, 0, 0.8); /* Semi-transparent black background */
      border-radius: 15px;
      box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
    }
    h1 {
      color: #00bfff; /* Bright blue color */
      margin-bottom: 20px;
    }
    p {
      font-size: 18px;
      line-height: 1.6;
      margin-bottom: 20px;
    }
    .footer {
      font-size: 14px;
      margin-top: 30px;
      color: #888888; /* Light grey color */
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Exploring the Mysteries of the Universe</h1>
    <p>Embark on a cosmic adventure to uncover the secrets of the universe. Delve into the depths of space and explore the wonders that lie beyond our world.</p>
    <p>Experience the awe of nebulae, stars, and the vastness of the galaxy as we journey through the mysteries of the cosmos.</p>
    <div class="footer">
      <p>Powered by EC2 and Terraform</p>
      <p>© 2024 Mystery Universe Exploration</p>
    </div>
  </div>
</body>
</html>
EOF

# Start Apache and enable it on boot
systemctl start apache2
systemctl enable apache2
