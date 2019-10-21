# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    22.sh                                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mnkebeny <mnkebeny@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/08 13:13:25 by mnkebeny          #+#    #+#              #
#    Updated: 2019/10/08 15:17:20 by mnkebeny         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/sh

# 22. Add Aiur as a worker of the local swarm in which Char is leader
#     (the command to take control of Aiur is not requested).

#  https://docs.docker.com/engine/reference/commandline/swarm_join/

TOKEN=$(docker swarm join-token worker -q)

eval $(docker-machine env Aiur)

docker swarm join --token ${TOKEN} $(docker-machine ip Char):2377

eval $(docker-machine env Char)
