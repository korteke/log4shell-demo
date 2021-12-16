FROM openjdk:11-slim-buster
MAINTAINER @korteke
WORKDIR /app
COPY target/log4shell-1.0.0.jar log4shell-1.0.0.jar
EXPOSE 8080
ENTRYPOINT ["java","-Dcom.sun.jndi.ldap.object.trustURLCodebase=true","-jar","/app/log4shell-1.0.0.jar"]
