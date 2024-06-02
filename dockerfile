FROM amazoncorretto:17

LABEL author="vijay"

RUN adduser -h /app /petclinic spc

USER spc

WORKDIR /app 

ARG DOWNLOAD_URL="https://referenceapplicationskhaja.s3.us-west-2.amazonaws.com/spring-petclinic-2.4.2.jar"

RUN curl -o ${DOWNLOAD_URL}

EXPOSE  8080

CMD ["java","-jar","spring-petclinic-2.4.2.jar"]
