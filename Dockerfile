FROM timveil/oo-docker-base:latest

LABEL maintainer="tjveil@gmail.com"

ENV SERVER_HOSTNAME=localhost
ENV STORAGE_HOSTNAME=server

RUN curl -o takipi-server-java.tar.gz \
    -L https://s3.amazonaws.com/app-takipi-com/deploy/takipi-server/takipi-server-java.tar.gz \
    && tar xvf takipi-server-java.tar.gz \
    && rm -rf takipi-server-java.tar.gz

ADD conf/my.server.properties takipi-server/conf/tomcat/shared/my.server.properties

ADD run.sh /run.sh
RUN chmod a+x /run.sh

CMD ["/run.sh"]