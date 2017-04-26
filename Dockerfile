FROM openjdk:8

ENV FOO bar
WORKDIR /home/root/javahelloworld
RUN mkdir bin
COPY src src
RUN javac -d bin src/HelloWorld.java
RUN touch toto
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
