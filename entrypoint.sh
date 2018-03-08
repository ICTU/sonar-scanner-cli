#!/bin/sh
SONAR_PROPERTIES="/sonar-scanner/conf/sonar-scanner.properties"

echo "sonar.host.url=$SONAR_HOST_URL" > $SONAR_PROPERTIES
echo "sonar.sourceEncoding=$SONAR_SOURCE_ENCONDING" >> $SONAR_PROPERTIES
echo "sonar.sources=$SONAR_SOURCES" >> $SONAR_PROPERTIES
echo "sonar.sourceEncoding=UTF-8" >> $SONAR_PROPERTIES
echo "sonar.projectKey=$SONAR_PROJECT_KEY" >> $SONAR_PROPERTIES
echo "sonar.exclusions=$SONAR_EXCLUSIONS" >> $SONAR_PROPERTIES

cat $SONAR_PROPERTIES

/sonar-scanner/bin/sonar-scanner "$@"