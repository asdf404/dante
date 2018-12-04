FROM vimagick/dante:latest

RUN apt-get update && apt-get install -y gettext && rm -rf /var/lib/{apt,dpkg,cache,log}/

COPY sockd.conf /opt/sockd.tpl
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

EXPOSE 1080

CMD [ "sockd", "-f", "/etc/sockd.conf", "-p", "/tmp/sockd.pid", "-N", "10" ]
