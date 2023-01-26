FROM node:12.18.1-alpine

ENV PORT 8085
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8085
CMD ["npm", "start"]