FROM node
MAINTAINER [Alejandro Baez](https://twitter.com/a_baez)

# Clone repository.
RUN git clone https://github.com/AndrewBelt/hack.chat.git /opt/hackchat

# Build the server.
WORKDIR /opt/hchat
RUN npm install
ADD add/config.json /opt/hchat/config.json

EXPOSE 6060

CMD ["npm", "start"]
