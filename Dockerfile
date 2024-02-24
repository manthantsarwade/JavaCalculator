FROM openjdk

RUN useradd -ms /bin/bash ojdk

RUN mkdir -p /home/ojdk/app/ && chown -R ojdk:ojdk /home/ojdk/app

WORKDIR /home/ojdk/app

COPY *.java ./

COPY TheodoraAna.jar ./ 

USER ojdk

# No compilation needed since you have the JAR already
ENTRYPOINT ["java", "-jar", "TheodoraAna.jar"]
