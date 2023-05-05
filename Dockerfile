FROM ubuntu:22.04
WORKDIR /root
COPY . .
RUN chmod +x ./install.sh
RUN chmod +x ./fix-call.sh
RUN chmod +x ./ssl.sh
COPY ./* /usr/local/bin/
EXPOSE 22 8081
