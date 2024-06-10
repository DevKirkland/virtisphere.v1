# Base Dockerfile for shared dependencies

FROM ubuntu:latest

# Update package lists
RUN apt-get update

# Install necessary packages
RUN apt-get install -y \
    wget \
    curl \
    gnupg \
    apt-transport-https \
    ca-certificates \
    fluxbox \
    xvfb \
    x11vnc \
    websockify \
    fonts-liberation \
    libasound2 \
    libglib2.0-0 \
    libx11-xcb1 \
    libxcb-dri3-0 \
    libxcomposite1 \
    libxcursor1 \
    libxdamage1 \
    libxext6 \
    libxfixes3 \
    libxi6 \
    libxrandr2 \
    libxrender1 \
    libxtst6 \
    libnss3 \
    libatk-bridge2.0-0 \
    libxss1 \
    libdbus-glib-1-2 \
    libpangocairo-1.0-0 \
    libcairo2 \
    libatk1.0-0 \
    libgtk-3-0 \
    libxinerama1 \
    fonts-noto-color-emoji \
    lsb-release \
    fonts-symbola \
    sudo

# Set environment variables for X11 display
ENV DISPLAY=:99

# Expose ports for VNC and noVNC
EXPOSE 5900 6080