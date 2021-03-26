# https://github.com/wsargent/docker-cheat-sheet#dockerfile
# https://docs.docker.com/engine/reference/builder/
# Get ubuntu image
FROM ubuntu:20.04

# Give my contact data
MAINTAINER Thomas Kramp <s115472@ap.be>

RUN apt-get -y update 
RUN apt-get -y install netcat
RUN apt-get install -y tzdata 
RUN apt-get install -y apache2 
RUN apt-get install -y apache2-utils

#RUN apt-get -y install mc
RUN echo '<html lang="en"><head><meta http-equiv="refresh" content="30; URL=http://www.disney.com"></head><body></body></html>' > index.html
COPY index.html /var/www/html/index.html 
RUN wget http://breakout.enclavegames.com/lesson10.html > game.html
COPY game.html /var/www/html/game.html
RUN apt-get clean
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND@"]

EXPOSE 80 