FROM caltha/protractor

# Copy in source and set working dir
COPY . /project
WORKDIR /project

# Install dependencies
RUN npm install -g protractor && npm install

# Start BrowserMob Proxy
RUN ./browsermob-proxy

CMD [ "npm", "test" ]
