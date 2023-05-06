FROM ubuntu:22.04
ENV TZ=Asia/Tehran \
    DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y sudo mariadb-server wget curl \
    apache2 ubuntu-server openssh-server
WORKDIR /root
COPY . .
RUN chmod +x ./run.sh
ENTRYPOINT [ "./run.sh" ]
EXPOSE 22 8081
