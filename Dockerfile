FROM spr0khorov/ci-base:v0.0.1
LABEL maintainer="Sergey Prokhorov <lisforlinux@gmail.com>"

ARG GOOGLE_SDK_VERSION="400.0.0"

RUN mkdir -p /usr/local/gcloud && \
    curl -s https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-${GOOGLE_SDK_VERSION}-linux-x86_64.tar.gz | tar -C /usr/local/gcloud -xz && \
    /usr/local/gcloud/google-cloud-sdk/install.sh --quiet && \
    ln -s /usr/local/gcloud/google-cloud-sdk/bin/gcloud /usr/local/bin/gcloud && \
    ln -s /usr/local/gcloud/google-cloud-sdk/bin/gsutil /usr/local/bin/gsutil && \
    ln -s /usr/local/gcloud/google-cloud-sdk/bin/docker-credential-gcloud /usr/local/bin/docker-credential-gcloud
