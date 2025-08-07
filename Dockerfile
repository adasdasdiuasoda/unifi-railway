FROM jacobalberty/unifi:latest

# Variáveis recomendadas
ENV RUNAS_UID0=true
ENV UNIFI_GID=1000
ENV UNIFI_UID=1000

# Portas padrão usadas pelo UniFi
EXPOSE 8080 8443 8880 8843 6789 27117

# Railway exige que o processo fique ativo
CMD ["bash", "-c", "tail -f /dev/null & /usr/local/bin/docker-entrypoint.sh"]
