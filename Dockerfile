FROM timveil/oo-docker-base

LABEL maintainer="tjveil@gmail.com"

ENV HOST_URL=localhost

RUN curl -o takipi-server-java.tar.gz \
    -L https://s3.amazonaws.com/app-takipi-com/deploy/takipi-server/takipi-server-java.tar.gz \
    && tar xvf takipi-server-java.tar.gz \
    && rm -rf takipi-server-java.tar.gz

ENTRYPOINT /takipi-server/bin/takipi-server.sh --host-url $HOST_URL -v start && tail --retry -f -n +1 /takipi-server/log/tomcat/tomcat/catalina.log
