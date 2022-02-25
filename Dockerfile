FROM alpine:3.15

WORKDIR /srv/qwc_service
ADD . .

# postgresql-dev g++ python3-dev: Required for psycopg2-binary
RUN \
    apk add --no-cache --update --virtual runtime-deps bash python3 py3-pip postgresql-client && \
    apk add --no-cache --update --virtual build-deps postgresql-dev g++ python3-dev && \
    pip3 install --no-cache-dir -r /srv/qwc_service/requirements.txt && \
    apk del build-deps

COPY *.sh /usr/local/bin/
COPY pg_service_demo.conf /root/.pg_service.conf

ENTRYPOINT /bin/bash
