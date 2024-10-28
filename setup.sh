#!/bin/bash

# Update and upgrade the system
echo "Updating and upgrading the system..."
sudo apt update && sudo apt upgrade -y

# Increase the file watchers limit to prevent ENOSPC errors
echo "Increasing file watchers limit..."
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

# Navigate to the project directory
cd ~/pet-shop-tutorial

# Install project dependencies (if not already installed)
echo "Installing project dependencies..."
npm install

# Start Ganache in the background
echo "Starting Ganache..."
ganache-cli &


# Start the lite-server in the background
echo "Starting the lite-server..."
npm run dev &

# Print access URLs
echo "Access your DApp at: http://localhost:3008"
