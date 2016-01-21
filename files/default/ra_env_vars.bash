if [ -e /usr/libexec/java_home ]; then
    export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
fi
export CATALINA_HOME="/Library/Tomcat"
export MYSQL_URL=$P3IP:3306
export MYSQL_LOGS_URL=ra-logs-dev.c5eechg2dviq.us-east-1.rds.amazonaws.com:3306
export MYSQL_PASSWORD=sunshine
export MYSQL_USER=cpf_spt
export RABBIT_HOST=$P3IP
export RABBIT_PORT=5672
export RABBIT_USERNAME=guest
export RABBIT_PASSWORD=guest
export RABBIT_REPLY_TIMEOUT=50000
export REDIS_HOSTNAME=$ENG_HOST
export REDIS_PORT=6379
export MONGO_HOST=$P3IP
export MONGO_USER=cpf_spt
export MONGO_PASSWORD=sunshine
export MONGO_PORT=27017
export MONGO_DATABASE=protools
export MONGO_LOGS_DATABASE=logs
export P2_BASE_URL=$ENG_HOST
export APP_ENV=dev
export MEMCACHE=$ENG_HOST
