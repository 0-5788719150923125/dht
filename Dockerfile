FROM debian:bookworm

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    python3-full \
    python3-pip \
    python3-packaging \
    && rm -rf /var/lib/apt/lists/*

LABEL sponsor="United Nations of Earth"

WORKDIR /src

COPY requirements.txt ./

RUN pip install --break-system-packages -r requirements.txt

COPY entrypoint.sh ./

ENTRYPOINT [ "sh", "entrypoint.sh" ]