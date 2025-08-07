FROM jacobalberty/unifi:stable

# Definindo UID/GID padrão e permissões
ENV RUNAS_UID0=true
ENV UNIFI_UID=1000
ENV UNIFI_GID=1000

# Expondo portas essenciais para o UniFi Controller
EXPOSE 8080 8443 8843 8880 6789 27117

# Diretório persistente
VOLUME ["/unifi"]

# Healthcheck para Railway não encerrar o serviço
HEALTHCHECK --interval=30s --timeout=10s --start-period=60s --retries=3 \
  CMD curl -f http://localhost:8080 || exit 1

# Comando de inicialização principal
CMD ["bash", "-c", "/usr/bin/java -Xmx1024M -jar /usr/lib/unifi/lib/ace.jar start"]
