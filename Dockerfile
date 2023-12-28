FROM node:18.17.1

RUN npm install -g npm@9.1.3
RUN sudo apt update && sudo apt upgrade -y

ADD package.json .
ADD index.js .
ADD build .
COPY . .
RUN npm install

EXPOSE 8080

CMD [ "node", "index.js" ]
