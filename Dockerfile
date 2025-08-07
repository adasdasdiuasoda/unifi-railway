FROM jacobalberty/unifi

ENV RUNAS_UID0=true
ENV UNIFI_UID=1000
ENV UNIFI_GID=1000

EXPOSE 8080 8443 8843 8880 6789 27117

CMD ["/usr/local/bin/docker-entrypoint.sh"]
