FROM alpine:3.6

LABEL repository="https://github.com/groupninemedia/general-action"
LABEL homepage="https://github.com/groupninemedia/general-action"
LABEL "com.github.actions.name"="General Commands"
LABEL "com.github.actions.description"="A Github Action to run General Commands including git commands"
LABEL "com.github.actions.icon"="settings"
LABEL "com.github.actions.color"="green"

RUN apk --update add git less coreutils && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]