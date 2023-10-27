FROM node:18 as base

WORKDIR /app

COPY ./package*.json ./

RUN npm install -g jest
RUN npm install

EXPOSE 3000

COPY . .

CMD ["npm", "run", "test"]
