# Use Ubuntu as base image
FROM tomcat

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

# Copy the Maven project directory into the container
COPY . /opt

# Set the working directory in the container
WORKDIR /opt/spring-backend

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN apt update 
RUN apt install maven -y
RUN apt install openjdk-11-jdk -y

# copy the database configuration file
COPY application.properties /opt/spring-backend/src/main/resources

# Build the Maven project
RUN mvn clean package -Dmaven.test.skip=true

# Expose the port the application runs on
EXPOSE 30090

# Command to run the application
CMD ["java", "-jar", "target/spring-backend-v1.jar"]