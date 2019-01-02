FROM daocloud.io/james_zhou/base-tomcat-maven:latest

MAINTAINER 21851172@zju.edu.cn

RUN mkdir -p /app
WORKDIR /app
COPY . /app

RUN mvn install

EXPOSE 8888

RUN cp /app/target/neo4j-backend-1.0.war /usr/local/tomcat/webapps/neo4j.war