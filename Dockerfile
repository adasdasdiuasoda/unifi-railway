FROM jacobalberty/unifi:latest

# Variáveis de ambiente recomendadas
ENV RUNAS_UID0=true
ENV UNIFI_GID=1000
ENV UNIFI_UID=1000

# Portas padrão necessárias para funcionamento do UniFi Controller
EXPOSE 8080 8443 8880 8843 6789 27117

# Railway não aceita CMDs que terminam rápido, o processo precisa ficar rodando
CMD ["bash", "-c", "/usr/bin/java -Xmx1024M -jar /usr/lib/unifi/lib/ace.jar start"]
