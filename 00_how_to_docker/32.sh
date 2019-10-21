# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    32.sh                                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mnkebeny <mnkebeny@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/08 17:51:00 by mnkebeny          #+#    #+#              #
#    Updated: 2019/10/09 08:49:30 by mnkebeny         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# 32. Force quit and delete all the containers (whatever their status), in one command.
# docker container --help
# docker container rm ls --help

docker container rm $(docker container ls -aq) --force