FROM nginx:1.10.1-alpine

COPY default.conf /etc/nginx/conf.d/default.conf
COPY nginx.conf  /etc/nginx/nginx.conf

ADD start.sh /start.sh
RUN chmod 700 /start.sh
RUN mkdir -p /data/nginx/cache

EXPOSE 80

CMD ["./start.sh"]
