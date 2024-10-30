FROM alpine:latest AS build
RUN apk add --update hugo
WORKDIR /opt/hugo-site
COPY . .
RUN hugo

FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY --from=build /opt/hugo-site/public .
EXPOSE 80/tcp