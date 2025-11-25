FROM ghcr.io/home-assistant/aarch64-base-python:latest

COPY requirements.txt /tmp/requirements.txt
RUN pip3 install --no-cache-dir -r /tmp/requirements.txt

COPY main.py /main.py
COPY rootfs/ / 

CMD ["/run.sh"]
