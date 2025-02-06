FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN apk add --no-cache python3 make g++ && npm install

COPY . .

EXPOSE 3001

CMD ["node", "dist/main.js"]
