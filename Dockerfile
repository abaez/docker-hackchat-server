FROM node
MAINTAINER [Alejandro Baez](https://twitter.com/a_baez)

RUN git clone https://github.com/AndrewBelt/hack.chat.git /opt/hchat

WORKDIR /opt/hchat

RUN npm install
RUN cp ./config-sample.json config.json

EXPOSE 6060

CMD ["npm", "start"]
