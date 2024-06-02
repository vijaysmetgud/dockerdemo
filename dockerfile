FROM amazoncorretto:11-alpine3.17

LABEL author="vijay"

RUN adduser -h /downloadloc -s /bin/sh -D spc

ADD wget "https://referenceapplicationskhaja.s3.us-west-2.amazonaws.com/spring-petclinic-2.4.2.jar" /downloadloc

USER spc

WORKDIR /downloadloc

EXPOSE  8080

CMD ["java","-jar","spring-petclinic-2.4.2.jar"]
