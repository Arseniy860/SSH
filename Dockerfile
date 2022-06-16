FROM devisty/xssh:v2

RUN apt-get update && \
  apt-get upgrade -y && \
  apt install python -y && \
   apt install python3 -y && \
   apt install git -y && \
   apt install pip -y && \
  rm -rf /var/lib/apt/lists/*

EXPOSE 80

COPY . /app
RUN chmod +x /app/start.sh
CMD ["/app/start.sh"]
