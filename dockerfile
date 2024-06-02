FROM amazoncorretto:17-alpine3.17

LABEL author="vijay"

RUN adduser -h /spc -s /bin/sh -D petclinic

ARG DOWNLOAD_URL=https://khajareferenceapps.s3.ap-south-1.amazonaws.com/spring-petclinic-3.2.0-SNAPSHOT.jar

USER petclinic

WORKDIR /spc

ADD --chown=petclinic:petclinic ${DOWNLOAD_URL} ${WORKDIR}/spring-petclinic-3.2.0-SNAPSHOT.jar
 
EXPOSE 8080

CMD [ "java","-jar","spring-petclinic-3.2.0-SNAPSHOT.jar" ]
