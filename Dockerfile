FROM nikolaik/python-nodejs:python3.10-nodejs19-bullseye  # ऐसा कोई tag चुनें जो Buster नहीं हो

RUN apt-get update \
    && apt-get install -y --no-install-recommends ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
