FROM caltha/protractor

COPY . /project
WORKDIR /project

RUN npm install -g protractor && npm install

CMD [ "npm", "test" ]
