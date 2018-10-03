# Dockerfile
FROM evarga/jenkins-slave
USER jenkins 
RUN apt-get update && apt-get --yy install sudo
RUN apt-get -yy install git
RUN apt-get install -yy software-properties-common
RUN apt-get-repository "deb http://ppa.launchpad.net/natecarlson/maven3/ubuntu precise main"
RUN apt-get update
RUN apt-get -yy --force-yes install maven3/ubuntu
RUN ln -s /usr/share/maven3/bin/mvn /usr/bin/mvn

