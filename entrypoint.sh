#!/bin/sh
SONAR_PROPERTIES="/sonar-scanner/conf/sonar-scanner.properties"

echo "sonar.sources=$SONAR_SOURCES" >> $SONAR_PROPERTIES

cat $SONAR_PROPERTIES

/sonar-scanner/bin/sonar-scanner "$@"
rm -rf .scannerwork