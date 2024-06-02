FROM amazoncorretto:17

LABEL author="vijay"

RUN adduser -h /petclinic -s /bin/sh -D petclinic

ADD --chown=petclinic:petclinic https://khajareferenceapps.s3.ap-south-1.amazonaws.com/spring-petclinic-3.2.0-SNAPSHOT.jar /petclinic/spring-petclinic-3.2.0-SNAPSHOT.jar
 
USER petclinic

WORKDIR /petclinic

EXPOSE 8080

CMD [ "java","-jar","spring-petclinic-3.2.0-SNAPSHOT.jar" ]
