#!/bin/bash

if [[ -f /flag.sh ]]; then
	source /flag.sh
fi

cd /app

if [ "$APP_CMD" ];then
	su - app -c "$APP_CMD"
else
	su - app -c "export CATALINA_HOME=/usr/local/tomcat && export PATH=/usr/local/tomcat/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin && JAVA_HOME=/usr/local/openjdk-8 && catalina.sh run"
fi
