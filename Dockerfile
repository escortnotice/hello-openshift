# dowload the openjdk version8image
FROM openjdk:8

# sets the working directory to /usr/src/app
WORKDIR /usr/src/app

# copies the jar file from the target directory to the "usr/src/app" directory
COPY ./target/hello-openshift-0.0.1-SNAPSHOT.jar hello-openshift-0.0.1-SNAPSHOT.jar

# expose the app to port 8080
EXPOSE 8080

# runs the java app with the "java -jar" command
ENTRYPOINT ["java","-jar","hello-openshift-0.0.1-SNAPSHOT.jar"]