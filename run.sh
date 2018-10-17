#!/bin/bash

echo "SIGN_URL_ENDPOINT=http://${STORAGE_HOSTNAME}:8080" >> /takipi-server/conf/tomcat-original/my.storage.properties

(/takipi-server/bin/takipi-server.sh --host-url ${SERVER_HOSTNAME} -v start &) && (java -jar /takipi-server/lib/h2.jar -webAllowOthers &) && (tail --retry -f -n +1 /takipi-server/log/tomcat/tomcat/catalina.log)