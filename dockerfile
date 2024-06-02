FROM amazoncorretto:17-alpine3.17

LABEL author="vijay"



RUN useradd -m /petclinic -s /bin/bash -D petclinic

ARG DOWNLOAD_URL="https://khajareferenceapps.s3.ap-south-1.amazonaws.com/spring-petclinic-3.2.0-SNAPSHOT.jar"

USER petclinic

WORKDIR /petclinic

ADD --chown=petclinic:petclinic ${DOWNLOAD_URL} ${WORKDIR}/spring-petclinic-3.2.0-SNAPSHOT.jar
 
EXPOSE 8080

CMD [ "java","-jar","spring-petclinic-3.2.0-SNAPSHOT.jar" ]
