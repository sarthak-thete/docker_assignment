#!/bin/bash

# Update system
apt-get update -y

# Install Git
apt-get install -y git

# Install Python
apt-get install -y python3 python3-pip python3-venv

# Install Node.js
curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
apt-get install -y nodejs

# Clone GitHub repository
cd /home/ubuntu
git clone https://github.com/Sarthak-Thete/Docker_Assignment.git

# -----------------------------
# Flask Backend
# -----------------------------
cd /home/ubuntu/Docker_Assignment/Backen/flaskp

pip3 install -r requirements.txt

nohup python3 app.py > flask.log 2>&1 &

# -----------------------------
# Express Frontend
# -----------------------------
cd /home/ubuntu/Docker_Assignment/FrontEnd

npm install

nohup node app.js > express.log 2>&1 &