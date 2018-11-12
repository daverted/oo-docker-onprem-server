#!/bin/bash

(/takipi-server/bin/takipi-server.sh --host-url ${HOST_URL} --frontend-url ${FRONTEND_URL} --db-url jdbc:postgresql://${DB_HOST}:${DB_PORT} --db-user ${DB_USER} --db-password ${DB_PASSWORD} -v start &) && (tail --retry -f -n +1 /takipi-server/log/tomcat/tomcat/catalina.log)