FROM node:12-alpine3.9

RUN apk update && apk upgrade && apk add npm
RUN mkdir -p ~/web/tp2/
COPY scr/ ~/web/tp2/
COPY package.json package.json
RUN npm install

expose 3000
CMD ["node", "~/web/tp2/src/index.js"]
