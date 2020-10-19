# ICTU Sonar Scanner CLI
A Sonar Scanner CLI Docker Image

This image is unsupported and has limited functionality (NodeJS is missing). If more features are needed, please use the official [Sonarsource Scanner image](https://hub.docker.com/r/sonarsource/sonar-scanner-cli).

To use this image add your sonar properties at the end of the commandline so they will be passed to the entrypoint, for instance:

    docker run -v $(pwd):/work -w /work ictu/sonar-scanner-cli -Dsonar.host.url=$SONAR_HOST:$SONAR_PORT -Dsonar.projectKey=project -Dsonar.sources=src

