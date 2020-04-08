FROM node:latest
RUN mkdir /app
WORKDIR /app
COPY package*.json ./
RUN npm install --prod
COPY . /app
CMD [ "npm", "start" ]
EXPOSE 3000