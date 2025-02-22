FROM node:18.20.7

RUN npm install -g npm@9.1.3
RUN sudo apt install openssh-client@1:9.2p1-2 -y

ADD package.json .
ADD index.js .
ADD build .
COPY . .
RUN npm install

EXPOSE 8080

CMD [ "node", "index.js" ]
