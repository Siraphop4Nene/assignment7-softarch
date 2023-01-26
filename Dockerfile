FROM node:12.18.1-alpine

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE ${PORT}
CMD ["npm", "start"]