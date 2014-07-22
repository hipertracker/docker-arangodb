FROM ubuntu:14.04
MAINTAINER hipertracker@gmail.com

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install wget
RUN wget http://www.arangodb.org/repositories/arangodb2/xUbuntu_14.04/Release.key
RUN apt-key add - < Release.key
RUN echo 'deb http://www.arangodb.org/repositories/arangodb2/xUbuntu_14.04/ /' >> /etc/apt/sources.list.d/arangodb.list
RUN apt-get -y update
RUN apt-get -y install arangodb=2.2.0
ADD initialize_and_run /
CMD /initialize_and_run
EXPOSE 8529
VOLUME /var/lib/arangodb

