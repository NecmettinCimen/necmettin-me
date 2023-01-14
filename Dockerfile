FROM nginx:latest


COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/conf.d/default.conf.template

CMD /bin/bash -c "envsubst '\$PORT' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf" && nginx -g 'daemon off;'


# Copy the build output to replace the default nginx contents.
COPY ./build/web /usr/share/nginx/html
