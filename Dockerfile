FROM debian:bookworm

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    python3-full \
    python3-pip \
    python3-packaging \
    python3-venv \
    && rm -rf /var/lib/apt/lists/*

LABEL sponsor="United Nations of Earth"

WORKDIR /src

RUN python3 -m venv /venv \
    && chmod +x /venv/bin/activate \
    && . /venv/bin/activate

COPY requirements.txt ./

RUN pip install --break-system-packages -r requirements.txt

COPY dht dht/

CMD ["python3", "dht/main.py"]