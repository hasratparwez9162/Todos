FROM openjdk:18-alpine
EXPOSE 8081
ADD target/myfirstwebapp.jar myfirstwebapp.jar
ENTRYPOINT ["java","-jar","/myfirstwebapp.jar"]