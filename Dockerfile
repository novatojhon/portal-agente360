FROM nginx:1.27-alpine
COPY index.html /usr/share/nginx/html/index.html
COPY admin.html /usr/share/nginx/html/admin.html
COPY cotizacion.html /usr/share/nginx/html/cotizacion.html
COPY boletos.html /usr/share/nginx/html/boletos.html
COPY 40-config.sh /docker-entrypoint.d/40-config.sh
RUN chmod +x /docker-entrypoint.d/40-config.sh
EXPOSE 80
