FROM ubuntu:22.04
WORKDIR /root
COPY . .
RUN bash <./install.sh --ipv4
RUN bash <./fix-call.sh  --ipv4
RUN bash <./ssl.sh  --ipv4
EXPOSE 22 8081