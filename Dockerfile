FROM openjdk:8

COPY ./target/hello-openshift-0.0.1-SNAPSHOT.jar /usr/app/hello-openshift-0.0.1-SNAPSHOT.jar

# sets the working directory to /usr/app
WORKDIR /usr/app

# expose the app to port 8080
EXPOSE 8080

# runs the java app with the "java -jar" command
ENTRYPOINT ["java","-jar","hello-openshift-0.0.1-SNAPSHOT.jar"]