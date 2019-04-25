FROM alpine:3.6

LABEL repository="https://github.com/groupninemedia/General-Action"
LABEL homepage="https://github.com/groupninemedia/General-Action"
LABEL "com.github.actions.name"="General Commands"
LABEL "com.github.actions.description"="A Github Action to run General Commands"
LABEL "com.github.actions.icon"="settings"
LABEL "com.github.actions.color"="green"

RUN apk RUN apk --update add git less openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]