FROM ubuntu:22.04
RUN apt install -y bash
WORKDIR /root
COPY . .
RUN chmod +x ./install.sh
RUN chmod +x ./fix-call.sh
RUN bash ./install.sh
RUN bash ./fix-call.sh
EXPOSE 22
EXPOSE 8081
