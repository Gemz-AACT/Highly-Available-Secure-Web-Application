#!/bin/bash
dnf update -y
dnf install -y httpd

systemctl enable httpd
systemctl start httpd

cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
    <title>Highly Available Secure Web App</title>
</head>
<body>
    <h1>Highly Available & Secure Web Application</h1>
    <p>Deployed with Terraform on AWS.</p>
    <p>This EC2 instance is running inside an Auto Scaling Group behind an Application Load Balancer.</p>
</body>
</html>
EOF