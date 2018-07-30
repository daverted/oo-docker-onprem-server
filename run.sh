#!/bin/bash

/takipi-server/bin/takipi-server.sh --host-url $HOST_URL -v start && tail --retry -f -n +1 /takipi-server/log/tomcat/tomcat/catalina.log