# Simple base image using Alpine
FROM alpine:3.18

LABEL maintainer="LABEL maintainer="krishnaharshap <qa-automation@example.com>"
LABEL version="0.1.0"
LABEL description="QA Test Automation Demo Container"

# Example: install curl for demonstration
RUN apk add --no-cache curl

# Add a simple script
COPY hello.sh /hello.sh
RUN chmod +x /hello.sh

ENTRYPOINT [ "/hello.sh" ]
