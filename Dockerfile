FROM jacobalberty/unifi:latest

# Variáveis de ambiente recomendadas
ENV RUNAS_UID0=true
ENV UNIFI_GID=1000
ENV UNIFI_UID=1000

# Portas padrão usadas pelo UniFi Controller
EXPOSE 8080 8443 8880 8843 6789 27117

# Mantém o container vivo e executa o entrypoint do container original
CMD ["bash", "-c", "tail -f /dev/null & /usr/local/bin/docker-entrypoint.sh"]
