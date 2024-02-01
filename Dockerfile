FROM nginx:1.25-alpine

RUN apk add curl

COPY default.conf.template /etc/nginx/conf.d/default.conf.template

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]