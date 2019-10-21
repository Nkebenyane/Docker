# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    33.sh                                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mnkebeny <mnkebeny@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/09 08:41:30 by mnkebeny          #+#    #+#              #
#    Updated: 2019/10/15 09:51:00 by mnkebeny         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


# 33. Delete all the container images stored on the Char virtual machine, in one command as well.
# docker image ls --help
# docker image --help

docker image rm $(docker image ls -aq)