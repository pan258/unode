#FROM ubuntu
#MAINTAINER Me (Me@mail.com)
#RUN apt-get update
#RUN apt-get install nodejs

# Kali Linux Top10
# Docker image with kali-linux-top10 and a handful of other useful tools
# More info: https://medium.com/@infosec_stuff/kali-linux-in-a-docker-container-5a06311624eb
FROM kalilinux/kali-linux-docker

RUN chmod +x /root
# do APT update
RUN apt-get -y update && apt-get -y upgrade 
RUN apt-get -y install weevely && apt-get -y install curl && apt-get -y install ruby 
RUN apt-get -y autoremove && apt-get clean
# install Kali Linux "Top 10" metapackage and a couple "nice to have" tools
RUN apt-get -y install kali-linux-top10 
RUN gem install highline
RUN adduser -D hackme
WORKDIR /app
CMD ["/bin/bash"]
