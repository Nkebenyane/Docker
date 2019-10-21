# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    28.sh                                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mnkebeny <mnkebeny@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/08 17:18:28 by mnkebeny          #+#    #+#              #
#    Updated: 2019/10/08 17:28:19 by mnkebeny         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# 28    Damn it, a group of zergs is attacking orbital-command, and shutting
#       down the engineering-bay service won’t help at all... You must send a troup 
#       of Marines to eliminate the intruders. Launch a 42school/marine-squad
#       in two replicas, and make sure that the service works properly (see the documentation 
#       provided at hub.docker.com). This service will be named... marines and will
#       be on the overmind network.

# https://hub.docker.com/r/42school/marine-squad/


docker service create -d --network overmind --name marines --replicas 2 -e OC_USERNAME=root -e OC_PASSWD=root 42school/marine-squad
