FROM jacobalberty/unifi:stable

# Configurações de permissões e UID
ENV RUNAS_UID0=true
ENV UNIFI_UID=1000
ENV UNIFI_GID=1000

# Portas necessárias expostas
EXPOSE 8080 8443 8843 8880 6789 27117

# Healthcheck (opcional, evita que Railway desligue)
HEALTHCHECK --interval=30s --timeout=10s --start-period=60s --retries=3 \
  CMD curl -f http://localhost:8080 || exit 1

# Comando principal de inicialização
CMD ["bash", "-c", "/usr/bin/java -Xmx1024M -jar /usr/lib/unifi/lib/ace.jar start"]
