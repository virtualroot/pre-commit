FROM alpine:3.11

ARG APK_PACKAGES="bash"

ENV HADOLINT_VERSION 1.17.5

RUN apk add --no-cache ${APK_PACKAGES}

SHELL ["/bin/bash", "-l", "-c"]

RUN adduser -s /bin/bash -h /home/pre-commit -D pre-commit

WORKDIR /home/pre-commit

RUN wget https://github.com/hadolint/hadolint/releases/download/v${HADOLINT_VERSION}/hadolint-Linux-x86_64 && \
    mv hadolint-Linux-x86_64 /usr/local/bin/hadolint && \
    chmod +x /usr/local/bin/hadolint

USER pre-commit

CMD ['/bin/bash']
