FROM node:12.18.1-alpine

WORKDIR /usr/src/app
COPY package*.json ./
COPY . .
RUN npm install
EXPOSE ${PORT}
CMD ["npm", "start"]