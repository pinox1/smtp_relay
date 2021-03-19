FROM debian:10.8

RUN apt update && \
    apt upgrade -y && \
    apt install -y postfix

COPY config_files/main.cf /etc/postfix/main.cf
COPY config_files/master.cf /etc/postfix/master.cf

CMD ["postfix", "start-fg"]

