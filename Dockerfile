FROM timveil/oo-docker-base

LABEL maintainer="tjveil@gmail.com"

ENV HOST_URL=localhost

RUN curl -o takipi-server-java.tar.gz \
    -L https://s3.amazonaws.com/app-takipi-com/deploy/takipi-server/takipi-server-java.tar.gz \
    && tar xvf takipi-server-java.tar.gz \
    && rm -rf takipi-server-java.tar.gz

ADD run.sh /run.sh
RUN chmod a+x /run.sh

CMD ["/run.sh"]