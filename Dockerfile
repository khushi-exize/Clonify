FROM python:3.10-bullseye

# Node.js 19 install
RUN curl -fsSL https://deb.nodesource.com/setup_19.x | bash - \
    && apt-get update \
    && apt-get install -y --no-install-recommends nodejs ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app/
COPY . /app/

RUN pip install --no-cache-dir -U -r requirements.txt

CMD ["bash", "start"]
