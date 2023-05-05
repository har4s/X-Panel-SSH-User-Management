FROM debian:stable-slim
WORKDIR /root
COPY . .
RUN bash <(curl -Ls https://raw.githubusercontent.com/Alirezad07/X-Panel-SSH-User-Management/master/install.sh --ipv4)
RUN bash <(curl -Ls https://raw.githubusercontent.com/Alirezad07/X-Panel-SSH-User-Management/master/fix-call.sh --ipv4)
RUN bash <(curl -Ls https://raw.githubusercontent.com/Alirezad07/X-Panel-SSH-User-Management/master/ssl.sh --ipv4)
EXPOSE 22 8081
