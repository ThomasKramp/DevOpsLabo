# https://github.com/wsargent/docker-cheat-sheet#dockerfile
# https://docs.docker.com/engine/reference/builder/

# docker build -t devops4 .
# docker run -p 8080:80 --name devops4 devops4

# Get ubuntu image
FROM ubuntu:20.04

# Give my contact data
MAINTAINER Thomas Kramp <s115472@ap.be>

RUN apt-get -y update
RUN apt-get install -y netcat
RUN apt-get install -y tzdata
RUN apt-get install -y apache2 
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN apt-get install -y curl
RUN apt-get install -y mc

RUN touch index.html
RUN echo '<html lang="en"><head><meta http-equiv="refresh" content="30; URL=http://www.disney.com"></head><body></body></html>' > index.html
COPY index.html /var/www/html/index.html 
RUN touch game.html
RUN curl http://breakout.enclavegames.com/lesson10.html > game.html
COPY game.html /var/www/html/game.html
RUN apt-get clean
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND@"]

EXPOSE 80

