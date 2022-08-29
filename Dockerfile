# FROM alpine:3.13.2

# USER root
# RUN apk add thttpd


# #RUN adduser -D static
# #USER static
# WORKDIR /home/static


# COPY . .

# CMD ["thttpd", "-D", "-h", "0.0.0.0", "-p", "3000", "-d", "/home/static", "-u", "root", "-l", "-", "-M", "60"]

FROM nginx:alpine

WORKDIR /app

COPY . .

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./mime.types /etc/nginx/mime.types