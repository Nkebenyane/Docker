# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    23.sh                                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mnkebeny <mnkebeny@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/08 15:17:38 by mnkebeny          #+#    #+#              #
#    Updated: 2019/10/08 15:25:09 by mnkebeny         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# 23. Create an overlay-type internal network that you will name overmind.

# https://docs.docker.com/network/overlay/
# docker network --help


docker network create -d overlay overmind