# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mnkebeny <mnkebeny@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/14 08:52:22 by mnkebeny          #+#    #+#              #
#    Updated: 2019/10/14 13:25:07 by mnkebeny         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# From a debian image you will add the appropriate sources to create a TeamSpeak 
# server, that will launch along with your container. It will be deemed valid if 
# at least one user can connect to it and engage in a normal discussion 
# (no far-fetched setup), so be sure to create your Dockerfile with the right options.
# Your program should get the sources when it builds, they cannot be in your repository.



#------build
# docker build -t ex01 . 

#----Run
# docker run -it ex01


#------inside the container 
# ./ts3server_startscript.sh start

FROM debian

RUN adduser --disabled-password --gecos "" teamspeak
RUN mkdir /opt/teamspeak
RUN chown teamspeak:teamspeak /opt/teamspeak/
RUN chmod 0770 /opt/teamspeak/


RUN apt-get update
RUN apt-get install -y bzip2 wget
RUN wget https://files.teamspeak-services.com/releases/server/3.9.1/teamspeak3-server_linux_amd64-3.9.1.tar.bz2
RUN tar xvf teamspeak3-server_linux_amd64-3.9.1.tar.bz2
RUN mv teamspeak3-server_linux_amd64/* /opt/teamspeak/
RUN rm -rf ~/teamspeak3-server_linux_amd64*

# https://forum.teamspeak.com/threads/56314-Tutorial-Port-Forwarding-(a-k-a-clients-cannot-connect)/page68

EXPOSE 9987/udp 
EXPOSE 30033
EXPOSE 10011
ENV TS3SERVER_LICENSE=accept
WORKDIR /opt/teamspeak
ENTRYPOINT sh ts3server_minimal_runscript.sh

#docker run -it -p 9987:9987/udp -p 10011:1011 -p 30033:3033 ex01
