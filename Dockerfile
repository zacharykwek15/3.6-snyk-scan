FROM node:20-alpine
WORKDIR /my-app 
COPY package*.json ./
RUN npm install
COPY backend.tf ./ 
EXPOSE 3000
CMD ["node", "index.js"]

