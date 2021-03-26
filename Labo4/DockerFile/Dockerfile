# https://github.com/wsargent/docker-cheat-sheet#dockerfile
# https://docs.docker.com/engine/reference/builder/
# Get ubuntu image
FROM ubuntu:20.04

# Give my contact data
MAINTAINER Thomas Kramp <s115472@ap.be>

# Haalt het netcat packet op
#RUN docker pull netcat
# COPY ?
CMD ["echo", "Pulled netcat"]

# Haalt het minecraft packet op
# RUN docker pull minecraft
CMD ["echo", "Pulled minecraft"]

# Voegt een meta refresh toe aan de index.html file
RUN sed -i -e '\@</head>@i\<meta http-equiv="refresh" content="30; URL=http://www.disney.com">' ~/var/www/html/index.html
CMD ["echo", "Inserted meta Refresh"]

# Voegt game.html file toe
RUN wget http://breakout.enclavegames.com/lesson10.html -O ~/var/www/html/game.html
CMD ["echo", "Added game.html"]

# Start de apache server
# https://www.cyberciti.biz/faq/star-stop-restart-apache2-webserver/
EXPOSE 80
RUN firefox http://localhost
CMD ["echo", "Started apache server"]
