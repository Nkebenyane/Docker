# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    13.sh                                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mnkebeny <mnkebeny@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/12 12:26:51 by mnkebeny          #+#    #+#              #
#    Updated: 2019/09/12 12:41:08 by mnkebeny         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#  13. Print the environment variables of the spawning-pool container in one
#      command, to be sure that you have configured your container properly.

#   Return low-level information on Docker objects
#   -f --format string -> Format the output using the given Go template

docker inspect -f '{{.Config.Env}}' spawning-pool