# dowload the openjdk version8image
FROM openjdk:8

# copies the jar file from the target directory to the "usr/src/app" directory
COPY ./target/hello-openshift-0.0.1-SNAPSHOT.jar hello-openshift-0.0.1-SNAPSHOT.jar

#run mvn command to clean the target directory and build the jar
./mvnw clean package

# sets the working directory to /usr/src/app
WORKDIR /usr/src/app

# expose the app to port 8080
EXPOSE 8080

# runs the java app with the "java -jar" command
ENTRYPOINT ["java","-jar","hello-openshift-0.0.1-SNAPSHOT.jar"]