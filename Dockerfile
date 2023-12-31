FROM node:18-alpine

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

#CMD ["npm", "run", "build"]
CMD ["/bin/sh", "-c", "npm run build;npm start"]
