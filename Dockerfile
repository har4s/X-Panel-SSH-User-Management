FROM ubuntu:22.04
ENV TZ=Asia/Tehran \
    DEBIAN_FRONTEND=noninteractive
RUN apt update -y && apt install bash sudo curl wget crontab -y
WORKDIR /root
COPY . .
RUN chmod +x ./install.sh
ENTRYPOINT [ "./install.sh" ]
EXPOSE 22 8081
