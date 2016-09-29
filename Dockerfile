FROM webnicer/protractor-headless

# Copy in source and set working dir
COPY . /protractor
WORKDIR /protractor

# Install dependencies
RUN npm install

# Install webdrivers
RUN webdriver-manager update

ENTRYPOINT [ "./entrypoint.sh" ]
