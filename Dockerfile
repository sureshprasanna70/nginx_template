FROM nginx:1.25.4

RUN useradd -r nginx_exporter
COPY nginx_exporter /etc/init.d/nginx-exporter
RUN chmod 0755 /etc/init.d/nginx-exporter

COPY nginx-prometheus-exporter /usr/local/bin/

COPY default.conf.template /etc/nginx/conf.d/default.conf.template
COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]