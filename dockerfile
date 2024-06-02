FROM amazoncorretto:17

LABEL author="vijay"

RUN useradd -d /app -m -s /bin/sh spc

USER spc

WORKDIR /appARG DOWNLOAD_URL="https://referenceapplicationskhaja.s3.us-west-2.amazonaws.com/spring-petclinic-2.4.2.jar"

RUN curl -O ${DOWNLOAD_URL}

EXPOSE  8080

CMD ["java","-jar","spring-petclinic-2.4.2.jar"]
