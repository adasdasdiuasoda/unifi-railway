FROM jacobalberty/unifi:latest

# Variáveis recomendadas
ENV RUNAS_UID0=true
ENV UNIFI_GID=1000
ENV UNIFI_UID=1000

# Portas necessárias para o UniFi Controller
EXPOSE 8080 8443 8880 8843 6789 27117

# Mantém o container ativo e inicia o Unifi Controller corretamente
CMD ["bash", "-c", "/usr/local/bin/docker-entrypoint.sh"]
