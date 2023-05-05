FROM ubuntu:22.04
WORKDIR /root
COPY . .
RUN /root/install.sh --ipv4
RUN /root/fix-call.sh  --ipv4
RUN /root/ssl.sh  --ipv4
EXPOSE 22 8081