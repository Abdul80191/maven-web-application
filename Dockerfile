FROM tomcat
WORKDIR /app
COPY pom.xml .
RUN apt-get update -y &&\
    apt-get install -y maven
RUN mvn clean package
EXPOSE 8080
COPY . .
CMD ["catalina.sh", "run"]

