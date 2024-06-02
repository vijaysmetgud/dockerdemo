FROM amazoncorretto:11-alpine3.17

LABEL author="vijay"

RUN adduser -h /petclinic -s /bin/sh -D petclinic

ADD https://referenceapplicationskhaja.s3.us-west-2.amazonaws.com/spring-petclinic-2.4.2.jar  /petclinic/spring-petclinic-2.4.2.jar
 
USER petclinic

WORKDIR /petclinic

EXPOSE 8080

CMD [ "java","-jar","spring-petclinic-2.4.2.jar" ]
