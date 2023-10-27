FROM node:18 as base

WORKDIR /app

COPY ./package*.json ./

RUN npm install pm2 -g
RUN npm install

EXPOSE 3000

COPY . .

CMD ["pm2-runtime", "src/app.js"]
