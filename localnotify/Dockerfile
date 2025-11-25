ARG BUILD_FROM=ghcr.io/home-assistant/aarch64-base:latest
FROM ${BUILD_FROM}

# Install python + pip
RUN apk add --no-cache python3 py3-pip

# Install Python dependencies (PEP 668 friendly)
COPY requirements.txt /tmp/requirements.txt
RUN pip3 install --break-system-packages --no-cache-dir -r /tmp/requirements.txt

# Copy application
COPY main.py /main.py

# Copy s6 services
COPY rootfs/ /
