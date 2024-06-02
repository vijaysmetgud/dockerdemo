FROM amazoncorretto:11-alpine3.17

LABEL author="vijay"

RUN adduser -h /spc -s /bin/sh -D /spc

ADD "https://referenceapplicationskhaja.s3.us-west-2.amazonaws.com/spring-petclinic-2.4.2.jar" spring-petclinic-2.4.2.jar

USER spc

WORKDIR /spc

EXPOSE 8080

CMD ["java","-jar","spring-petclinic-2.4.2.jar"]
