FROM ubuntu:22.04
WORKDIR /root
COPY . .
RUN chmod +x ./install.sh
RUN chmod +x ./fix-call.sh
RUN chmod +x ./ssl.sh
EXPOSE 22 8081
CMD [ "sh", "/root/install.sh" ]
