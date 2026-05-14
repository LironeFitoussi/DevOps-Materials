FROM node:20-alpine

WORKDIR /app

COPY package.json .

RUN npm install --omit=dev

COPY . .

ENV PORT=3000
ENV APP_ENV=production
ENV APP_NAME=docker-node-app
ENV APP_VERSION=1.0.0

EXPOSE 3000

CMD ["node", "app.js"]
