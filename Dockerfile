FROM dockerfile/java:oracle-java8
VOLUME /tmp
ADD target/spinnaker-demo-1.0.jar target/app.jar
RUN bash -c 'touch target/app.jar'
ENTRYPOINT ["java","-jar","-Dspring.profiles.active=local","target/app.jar"]