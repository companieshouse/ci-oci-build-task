FROM concourse/oci-build-task:0.11

RUN apk add --update --no-cache \
    bash
