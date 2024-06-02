FROM amazoncorretto:11-alpine3.17

LABEL author="vijay"

RUN adduser -h /petclinic -s /bin/sh -D /petclinic

ADD https://khajareferenceapps.s3.ap-south-1.amazonaws.com/spring-petclinic-3.2.0-SNAPSHOT.jar spring-petclinic-2.4.2.jar

USER petclinic

WORKDIR /petclinic

EXPOSE 8080

CMD [ "java","-jar","spring-petclinic-2.4.2.jar" ]
