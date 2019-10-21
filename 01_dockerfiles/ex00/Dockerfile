# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mnkebeny <mnkebeny@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/09 09:19:34 by mnkebeny          #+#    #+#              #
#    Updated: 2019/10/14 10:37:40 by mnkebeny         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


# Dockerfile is a text file with command/intractions to build image
# Its an automation of docker image creation

# => From an alpine image you’ll add to your container your favorite text 
#    editor, vim or emacs, that will launch along with your container.

# https://docs.docker.com/v17.09/engine/reference/commandline/build/#description
# https://hub.docker.com/_/alpine

#------build
# docker build -t ex00 . 

#----Run
# docker run -it ex00 

FROM alpine

RUN apk update
RUN apk add vim

ENTRYPOINT vim