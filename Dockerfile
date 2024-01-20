FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

RUN npm install -g serverless serverless-offline@6.8.0

COPY . .

CMD ["serverless", "offline"]