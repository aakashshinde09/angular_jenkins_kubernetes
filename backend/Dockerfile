# Use Ubuntu as base image
FROM tomcat

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

# Copy the Maven project directory into the container
COPY . /opt

# Set the working directory in the container
WORKDIR /opt
# Install dependencies
RUN apt update 
RUN apt install openjdk-11-jdk -y
RUN apt install maven -y

# Expose the port the application runs on
EXPOSE 8085

# Command to run Tomcat
#CMD ["catalina.sh", "run"]

# Command to run the application
CMD ["java", "-jar", "spring-backend-v1.jar"]