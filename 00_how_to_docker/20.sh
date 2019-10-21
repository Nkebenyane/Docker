# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    20.sh                                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mnkebeny <mnkebeny@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/12 16:20:09 by mnkebeny          #+#    #+#              #
#    Updated: 2019/10/08 13:33:12 by mnkebeny         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


# 20. Create a local swarm, the Char virtual machine should be its manager.
#     --advertise-addr >> To put it simply, the --advertise-addr is the address other nodes in the Docker swarm use to connect into your node.
#      docker swarm --hlep
#      docker swarm join --help

#     https://www.techrepublic.com/article/how-to-create-a-docker-swarm/
#     https://boxboat.com/2016/08/17/whats-docker-swarm-advertise-addr/
#

docker swarm init --advertise-addr $(docker-machine ip Char)