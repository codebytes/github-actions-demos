FROM nginx:1.29-alpine
EXPOSE 80
HEALTHCHECK --interval=30s --timeout=3s CMD wget -qO- http://localhost/ || exit 1
COPY src/. /usr/share/nginx/html/