#!/bin/bash
apt update
apt install -y apache2

# Get the instance ID using the instance metadata
INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)

# Install the AWS CLI
apt install -y awscli

# Create a simple HTML file with the travel story content
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
      background-color: #f0f8ff;
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      color: #333;
    }
    .container {
      max-width: 600px;
      text-align: center;
      padding: 20px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      background-color: white;
      border-radius: 8px;
    }
    h1 {
      color: #2a52be;
      margin-bottom: 10px;
    }
    h2 {
      color: #008b8b;
      margin-bottom: 15px;
    }
    p {
      font-size: 18px;
      line-height: 1.6;
      margin-bottom: 20px;
    }
    .footer {
      font-size: 14px;
      color: #666;
      margin-top: 30px;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Adventures in the Alps</h1>
    <h2>A Journey Through the Mountains</h2>
    <p>Join me as I recount my exhilarating journey through the Alpine landscape. From breathtaking views atop towering peaks to the serene beauty of the valleys, each moment was a testament to nature's wonders.</p>
    <p>This adventure has been a life-changing experience, offering not just scenic beauty but also a chance to reflect and grow. The mountains, with their majestic and unyielding presence, have taught me the value of perseverance and awe.</p>
    <div class="footer">
      <p>Instance ID: <span>$INSTANCE_ID</span></p>
      <p>Powered by EC2 and Terraform</p>
    </div>
  </div>
</body>
</html>
EOF

# Start Apache and enable it on boot
systemctl start apache2
systemctl enable
