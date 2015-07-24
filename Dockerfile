FROM node
MAINTAINER [Alejandro Baez](https://twitter.com/a_baez)

RUN git clone https://github.com/AndrewBelt/hack.chat.git /opt/hchat
ADD add/config.json /opt/hchat/config.json

WORKDIR /opt/hchat

RUN npm install

EXPOSE 6060

CMD ["npm", "start"]
