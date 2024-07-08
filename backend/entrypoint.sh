#!/bin/bash

# Modify the application.properties file
sed -i 's/spring.datasource.url=jdbc:mysql:\/\/localhost:3306\/springbackend?useSSL=false/spring.datasource.url=jdbc:mysql:\/\/database-1.cru2a806a2xh.us-east-1.rds.amazonaws.com:3306\/springbackend?useSSL=false/' /var/lib/jenkins/workspace/Container/spring-backend/src/main/resources/application.properties
sed -i 's/spring.datasource.username=springbackend/spring.datasource.username=admin/' /var/lib/jenkins/workspace/Container/spring-backend/src/main/resources/application.properties
sed -i 's/spring.datasource.password=springbackend/spring.datasource.password=akash123/' /var/lib/jenkins/workspace/Container/spring-backend/src/main/resources/application.properties

echo "" >> /var/lib/jenkins/workspace/Container/spring-backend/src/main/resources/application.properties
echo 'server.port=8085' >> /var/lib/jenkins/workspace/Container/spring-backend/src/main/resources/application.properties

