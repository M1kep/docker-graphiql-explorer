FROM nginx:alpine

COPY nginx_config/default.tmpl /etc/nginx/conf.d/default.tmpl
COPY src/index.html /www/data/index.html

CMD sh -c "envsubst < /etc/nginx/conf.d/default.tmpl > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'"