FROM concourse/oci-build-task:0.11

RUN apk upgrade --update --no-cache && \
    apk add --update --no-cache \
    bash
