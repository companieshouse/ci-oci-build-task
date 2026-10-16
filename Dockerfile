FROM concourse/oci-build-task:0.12

ARG ECR_CRED_HELPER_VER=0.12.0

RUN apk upgrade --update --no-cache && \
    apk add --update --no-cache \
        bash=5.2.37-r0 \
        curl=8.14.1-r2

RUN curl -s "https://amazon-ecr-credential-helper-releases.s3.us-east-2.amazonaws.com/${ECR_CRED_HELPER_VER}/linux-amd64/docker-credential-ecr-login" -o /usr/local/bin/docker-credential-ecr-login && \
    chmod 0755 /usr/local/bin/docker-credential-ecr-login

COPY resources/docker-config.json /root/.docker/config.json
