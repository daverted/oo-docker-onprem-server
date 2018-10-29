#!/bin/bash

(/takipi-server/bin/takipi-server.sh --host-url ${HOST_URL} --frontend-url ${FRONTEND_URL} --db-url jdbc:postgresql://db:${DB_PORT} --db-user postgres --db-password overops -v start &) && (tail --retry -f -n +1 /takipi-server/log/tomcat/tomcat/catalina.log)