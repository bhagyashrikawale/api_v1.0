FROM tomcat:9
COPY /webapps/api_v1.0/target/*.war /usr/local/webapps/
EXPOSE 8080
CMD ["Catalina.sh","run"]




