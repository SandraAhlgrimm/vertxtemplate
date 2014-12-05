#!/bin/bash

#
# vertxconsumertemplate	Startup script for VertxConsumerTemplate
#
SCRIPTDIR=$(dirname "$0")
BASEDIR=$(dirname "$SCRIPTDIR")

JAVA_OPTS="-server -Xmx1G -XX:NewRatio=50 -XX:+HeapDumpOnOutOfMemoryError -XX:+UseG1GC"
JAVA_OPTS="$JAVA_OPTS -XX:HeapDumpPath=/srv/headpdumps"
JAVA_OPTS="$JAVA_OPTS -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=5566"
JAVA_OPTS="$JAVA_OPTS -Dcom.sun.management.jmxremote.local.only=false -Dcom.sun.management.jmxremote.authenticate=false"
JAVA_OPTS="$JAVA_OPTS -Dcom.sun.management.jmxremote.ssl=false"

JAR_FILE="$BASEDIR/vertxconsumertemplate-*-fat.jar"

function start() {
    echo "Starting JAR_FILE"
    START_SCRIPT="/usr/bin/java $JAVA_OPTS -jar $JAR_FILE"
    echo $START_SCRIPT
    exec $START_SCRIPT
}

start

exit 0
