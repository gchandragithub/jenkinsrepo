FROM java:8-jdk-alpine
COPY ./build/libs/gs-spring-boot-0.1.0.jar /usr/app/
WORKDIR /usr/app
ARG environment
ENV STAGEPROD_PORT=${environment}
EXPOSE ${STAGEPROD_PORT}
ENTRYPOINT ["java", "-jar", "gs-spring-boot-0.1.0.jar"]