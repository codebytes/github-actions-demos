FROM nginx:1.27-alpine
EXPOSE 80
HEALTHCHECK --interval=30s --timeout=3s CMD wget -qO- http://localhost/ || exit 1
COPY src/. /usr/share/nginx/html/