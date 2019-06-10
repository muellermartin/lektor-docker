FROM alpine:3.9.4

LABEL maintainer="Martin Müller <mail@mueller-martin.net>"

RUN apk add --update curl python3 python3-dev build-base openssl-dev libffi-dev imagemagick
RUN if [ ! -e /usr/bin/python ]; then ln -s /usr/bin/python3 /usr/bin/python; fi
ENV LEKTOR_SILENT=1
# Patch install script on-the-fly by removing erroneous line with sed
RUN curl -sf https://www.getlektor.com/install.sh | sed '/sys\.stdin/d' | sh

EXPOSE 5000

WORKDIR /lektor

ENTRYPOINT ["/usr/local/bin/lektor"]
