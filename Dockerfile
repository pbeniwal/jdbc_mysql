FROM openjdk:11
COPY ./target/employee-jdbc-0.0.1-SNAPSHOT.war employee-jdbc.war

# Add docker-compose-wait tool -------------------
ENV WAIT_VERSION 2.7.2
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/$WAIT_VERSION/wait /wait
RUN chmod +x /wait

CMD ["java","-jar","employee-jdbc.war"]
