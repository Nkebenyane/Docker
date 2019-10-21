# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    27.sh                                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mnkebeny <mnkebeny@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/08 16:10:18 by mnkebeny          #+#    #+#              #
#    Updated: 2019/10/08 16:55:55 by mnkebeny         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# 27. Get the real-time logs of one the tasks of the engineering-bay service.

#    https://docs.docker.com/engine/reference/commandline/service_logs/

docker service logs engineering-bay | grep "engineering-bay.1"