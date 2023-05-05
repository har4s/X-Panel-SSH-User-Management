FROM ubuntu:22.04
RUN apt install -y bash
WORKDIR /root
COPY . .
RUN chmod +x ./install.sh
RUN chmod +x ./fix-call.sh
RUN chmod +x ./ssl.sh
RUN bash ./install.sh
RUN bash ./fix-call.sh
RUN bash ./ssl.sh
EXPOSE 22
EXPOSE 8081
