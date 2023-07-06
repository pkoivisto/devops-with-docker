FROM node:16
EXPOSE 3000

WORKDIR /app

ADD index.js /app
ADD package.json /app

RUN npm install

CMD ["node", "index.js"]