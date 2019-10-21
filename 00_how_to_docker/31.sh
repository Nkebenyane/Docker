# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    31.sh                                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mnkebeny <mnkebeny@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/08 17:44:52 by mnkebeny          #+#    #+#              #
#    Updated: 2019/10/09 08:34:37 by mnkebeny         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# 31. Force quit and delete all the services on the local swarm, in one command.

docker service rm $(docker service -q)