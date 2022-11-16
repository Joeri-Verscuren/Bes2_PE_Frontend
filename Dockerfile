#Dockerfile frontend
FROM node:17-alpine
ENV PATH /app/node_modules/.bin:$PATH
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
CMD ["npm", "start"]
