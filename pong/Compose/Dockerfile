# Get ubuntu image
FROM ubuntu:20.04

# Give my contact data
MAINTAINER Thomas Kramp <s115472@ap.be>

RUN sudo cp -r ~/Documents/Repo/pong/Compose/config.xml /data/compose/jenkins
RUN sudo cp -r ~/Documents/Repo/pong/Compose/users /data/compose/jenkins
RUN sudo cp -r ~/Documents/Repo/pong/Compose/plugins /data/compose/jenkins
RUN docker stop composeJenkins
RUN docker start composeJenkins

