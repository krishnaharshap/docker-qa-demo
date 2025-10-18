# Simple base image using Alpine
FROM alpine:3.18

# ==== Metadata labels ====
LABEL org.opencontainers.image.authors="Krishna Harsha P <qa-automation@example.com>" \
      org.opencontainers.image.version="0.1.0" \
      org.opencontainers.image.description="QA Test Automation Demo Container" \
      org.opencontainers.image.url="https://github.com/krishnaharshap/docker-qa-demo" \
      org.opencontainers.image.licenses="MIT"


# Example: install curl for demonstration
RUN apk add --no-cache curl

# Add a simple script
COPY hello.sh /hello.sh
RUN chmod +x /hello.sh

ENTRYPOINT [ "/hello.sh" ]
