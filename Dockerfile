FROM webnicer/protractor-headless

# Copy in source and set working dir
COPY . /project
WORKDIR /project

# Install dependencies
RUN npm install

CMD [ "./entrypoint.sh" ]
