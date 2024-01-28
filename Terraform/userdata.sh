#!/bin/bash
apt update
apt install -y apache2

# Install the AWS CLI
apt install -y awscli

# Create an enhanced HTML file with a vibrant travel-themed layout
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Travel Diaries</title>
  <style>
    body {
      font-family: 'Arial', sans-serif;
      background-color: #e0f7fa; /* Light blue background */
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }
    .container {
      max-width: 600px;
      text-align: center;
      padding: 20px;
      background-color: #fff8dc; /* Cornsilk color */
      border-radius: 15px;
      box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
    }
    h1 {
      color: #ff4500; /* OrangeRed color */
      margin-bottom: 20px;
    }
    h2 {
      color: #ffa500; /* Orange color */
      margin-bottom: 20px;
    }
    p {
      font-size: 18px;
      line-height: 1.6;
      color: #2e8b57; /* SeaGreen color */
      margin-bottom: 20px;
    }
    .footer {
      font-size: 14px;
      color: #808080; /* Gray color */
      margin-top: 30px;
    }
    .footer p {
      margin-bottom: 10px;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Enchanting Tuscany</h1>
    <h2>Exploring the Heart of Italy</h2>
    <p>Discover the rolling hills, vineyards, and rich history of Tuscany. This picturesque region offers a journey through medieval towns, art, and unforgettable culinary experiences.</p>
    <p>From the historic streets of Florence to the Leaning Tower of Pisa, every step is a journey through time. The sunset over the Tuscan landscape is an artist's palette of vibrant colors, a breathtaking sight that lingers in memory.</p>
    <div class="footer">
      <p>Powered by EC2 and Terraform</p>
      <p>© 2024 Travel Diaries</p>
    </div>
  </div>
</body>
</html>
EOF

# Start Apache and enable it on boot
systemctl start apache2
systemctl enable apache2
