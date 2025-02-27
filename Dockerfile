FROM node:12-alpine

COPY package.json /app/package.json
COPY package-lock.json /app/package-lock.json

WORKDIR /app

#RUN NODE_ENV=development npm ci
#RUN npm ci
RUN npm install

COPY . /app

CMD ["npm", "run", "start:prod"]
