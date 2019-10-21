# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    26.sh                                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mnkebeny <mnkebeny@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/08 15:58:27 by mnkebeny          #+#    #+#              #
#    Updated: 2019/10/08 16:47:38 by mnkebeny         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# 26. Launch a 42school/engineering-bay service in two replicas and make sure 
#     that the service works properly (see the documentation provided at hub.docker.com). 
#     This service will be named engineering-bay and will be on the overmind network.

#     https://hub.docker.com/r/42school/engineering-bay/
#     same as 24.sh

docker service create -d --network overmind --name engineering-bay --replicas 2 -e OC_USERNAME=root -e OC_PASSWD=root 42school/engineering-bay
