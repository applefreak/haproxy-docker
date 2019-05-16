FROM haproxy:1.8

ENV HATOP_URL https://github.com/feurix/hatop/archive/v0.7.7.tar.gz

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

RUN apt-get update \
    && apt-get install -y wget python

RUN set -x \
    && wget -O hatop.tar.gz "$HATOP_URL" \
    && mkdir -p /usr/src/hatop \
    && tar -xzf hatop.tar.gz -C /usr/src/hatop --strip-components=1 \
    && rm hatop.tar.gz \
    && install -m 755 /usr/src/hatop/bin/hatop /usr/local/sbin \
    && rm -rf /usr/src/hatop
