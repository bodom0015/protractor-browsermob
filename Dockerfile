#FROM webnicer/protractor-headless

FROM debian:stable-backports

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
  apt-get install -y curl && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*


RUN apt-get update && \
  apt-get install -y \
    openjdk-7-jre \
    xvfb \
    libgconf-2-4 \
    libexif12 \
    chromium \
    npm \
    supervisor \
    netcat-traditional \
    curl \
    ffmpeg && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

RUN ln -s /usr/bin/nodejs /usr/bin/node

# Protractor test project needs to be mounted at /project
VOLUME ["/project"]

# Copy in source and set working dir
COPY . /project
WORKDIR /project

# Install dependencies
RUN npm install

# Install webdrivers
RUN node ./node_modules/protractor/bin/webdriver-manager update

ENTRYPOINT [ "./entrypoint.sh" ]
