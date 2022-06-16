FROM devisty/xssh:v2

RUN apt-get update && \
  apt-get upgrade -y && \
  apt install python pithon3 git pip
  rm -rf /var/lib/apt/lists/*

EXPOSE 80

COPY . /app
RUN chmod +x /app/start.sh
CMD ["/app/start.sh"]
