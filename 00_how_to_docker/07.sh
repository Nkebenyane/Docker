# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    07.sh                                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mnkebeny <mnkebeny@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/11 09:19:59 by mnkebeny          #+#    #+#              #
#    Updated: 2019/10/07 13:41:05 by mnkebeny         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# 7. Get the internal IP address of the overlord container without starting its
#    shell and in one command.

# -f, --format string -> Format the output using the given go template
# overlord is our container from 06.sh
 
docker inspect -f '{{.NetworkSettings.IPAddress}}' overlord