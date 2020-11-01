FROM nginx

RUN rm /etc/nginx/nginx.conf
COPY etc/nginx/nginx.conf /etc/nginx/nginx.conf

RUN rm /etc/nginx/conf.d/default.conf

#COPY etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf
COPY etc/nginx/conf.d/server_doxi-uuid.conf /etc/nginx/conf.d/server_doxi-uuid.conf
COPY etc/nginx/conf.d/locations_doxi-uuid /etc/nginx/conf.d/locations_doxi-uuid
COPY etc/nginx/conf.d/upstream_doxi-uuid.conf /etc/nginx/conf.d/upstream_doxi-uuid.conf

COPY etc/nginx/js /etc/nginx/js


