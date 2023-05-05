FROM ubuntu:22.04
RUN apt install -y bash
WORKDIR /root
COPY . .
RUN chmod +x ./install.sh
ENTRYPOINT ["./install.sh"]
EXPOSE 22 8081
