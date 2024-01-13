FROM node:18-alpine

WORKDIR /app

# install requirements
COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD [ "npm","start" ]

