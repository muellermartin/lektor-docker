FROM alpine:3.20.3

LABEL maintainer="Martin Müller <mail@mueller-martin.net>"

RUN apk add --update python3 py3-pip imagemagick rsync && \
    rm /usr/lib/python*/EXTERNALLY-MANAGED && \
    pip install lektor

EXPOSE 5000

WORKDIR /lektor

ENTRYPOINT ["/usr/bin/lektor"]
