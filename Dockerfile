#Basic Image
FROM java:8

#author
MAINTAINER venizeng@gmail.com

#git clone hello-springboot from github
COPY target/hello-springboot-0.0.1-SNAPSHOT.jar app.jar

#
RUN bash -c 'touch /app.jar'

#expose port

#run application
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
