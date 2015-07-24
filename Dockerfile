FROM node
MAINTAINER [Alejandro Baez](https://twitter.com/a_baez)

# Clone repository.
RUN git clone https://github.com/AndrewBelt/hack.chat.git /opt/hchat

# Build the server.
WORKDIR /opt/hchat
RUN npm install
ADD add/config.json /opt/hchat/config.json

# Setup the client.
WORKDIR /opt/hchat/client
RUN npm install -g less jade http-server
RUN make

EXPOSE 8080

CMD ["http-server"]
