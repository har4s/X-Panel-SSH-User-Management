FROM ubuntu:22.04
WORKDIR /root
COPY . .
RUN ./install.sh --ipv4
RUN ./fix-call.sh  --ipv4
RUN ./ssl.sh  --ipv4
EXPOSE 22 8081