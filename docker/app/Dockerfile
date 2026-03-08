FROM nginx:1.27-alpine

LABEL maintainer="devops-cloud-platform"
LABEL description="DevOps Cloud Platform demo service"

COPY nginx.conf /etc/nginx/nginx.conf

COPY index.html /usr/share/nginx/html/index.html

RUN chmod -R 755 /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]