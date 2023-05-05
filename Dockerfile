FROM ubuntu:22.04
ENV TZ=Asia/Tehran \
    DEBIAN_FRONTEND=noninteractive
RUN apt update -y && apt install bash sudo -y
WORKDIR /root
COPY . .
RUN chmod +x ./install.sh
RUN bash ./install.sh
EXPOSE 22 8081
