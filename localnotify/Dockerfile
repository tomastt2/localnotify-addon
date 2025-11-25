ARG BUILD_FROM=ghcr.io/home-assistant/aarch64-base:latest
FROM ${BUILD_FROM}

# Install Python
RUN apk add --no-cache python3 py3-pip

# Install python dependencies
COPY requirements.txt /tmp/requirements.txt
RUN pip3 install --no-cache-dir -r /tmp/requirements.txt

# Copy application
COPY main.py /main.py

# Copy s6 services
COPY rootfs/ /

# No CMD, no ENTRYPOINT – s6 handles everything
