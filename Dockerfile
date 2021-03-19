FROM debian:10.8

RUN apt update && \
    apt upgrade -y && \
    apt install -y postfix

COPY main.cf /etc/postfix/main.cf
COPY master.cf /etc/postfix/master.cf

CMD ["postfix", "start-fg"]
