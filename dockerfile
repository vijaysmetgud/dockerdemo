FROM amazoncorretto:17

LABEL author="vijay"

ARG DOWNLOAD_URL="https://referenceapplicationskhaja.s3.us-west-2.amazonaws.com/spring-petclinic-2.4.2.jar"

RUN curl -O ${DOWNLOAD_URL}

WORKDIR /

EXPOSE  8080

CMD ["java","-jar","spring-petclinic-2.4.2.jar"]
