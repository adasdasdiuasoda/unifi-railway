FROM jacobalberty/unifi:v8

ENV RUNAS_UID0=true
ENV UNIFI_GID=999
ENV UNIFI_UID=999

EXPOSE 8443 8080 8843 8880 6789 27117

CMD ["java", "-Xmx1024M", "-jar", "/usr/lib/unifi/lib/ace.jar", "start"]
