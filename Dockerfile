FROM openjdk:8-jre-alpine
MAINTAINER Maikel Dollé <maikel@itmagix.nl>

RUN adduser -D -u 666 fitnesse

ADD start.sh /start.sh
RUN chmod o+x /start.sh

ENV FNREL=20161106
RUN mkdir -p /opt/fitnesse/FitNesseRoot \
  && wget -O "/opt/fitnesse/fitnesse-standalone.jar" "http://www.fitnesse.org/fitnesse-standalone.jar?responder=releaseDownload&release=$FNREL" \
  && chown -R fitnesse.fitnesse /opt/fitnesse

VOLUME /FitNesseRoot

ENTRYPOINT ["/start.sh"]
