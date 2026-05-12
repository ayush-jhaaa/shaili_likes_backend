# Base image
FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

#Copy source code
COPY . .

#Build TypeScript → JavaScript
RUN npm run build

#Run the compiled app
CMD ["node", "dist/server.js"]

EXPOSE 3000
