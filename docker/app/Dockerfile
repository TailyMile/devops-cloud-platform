FROM alpine:3.20 AS builder

WORKDIR /build

COPY index.html .

RUN echo "Build stage completed"

FROM nginx:1.27-alpine

COPY nginx.conf /etc/nginx/nginx.conf

COPY --from=builder /build/index.html /usr/share/nginx/html/index.html

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=5s --retries=3 \
  CMD wget --spider -q http://localhost || exit 1

CMD ["nginx", "-g", "daemon off;"]