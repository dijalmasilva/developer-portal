FROM node:alpine

RUN mkdir -p /opt/app
RUN apk add --no-cache libc6-compat
EXPOSE 3000

WORKDIR /opt/app
COPY . /opt/app

RUN npm install && npm rebuild node-sass && npm run build

CMD [ "npm", "start" ]