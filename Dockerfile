FROM node:18.12.1-alpine
EXPOSE 5000
WORKDIR /app
COPY package.json .
COPY package-lock.json .
RUN npm install
COPY . .
CMD ["npm", "start", "--host", "0.0.0.0"]