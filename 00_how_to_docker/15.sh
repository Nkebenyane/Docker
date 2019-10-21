# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    15.sh                                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mnkebeny <mnkebeny@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/12 13:30:19 by mnkebeny          #+#    #+#              #
#    Updated: 2019/09/12 13:37:11 by mnkebeny         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# 15. Launch a phpmyadmin container as a background task. It should be named
#     roach-warden, its 80 port should be bound to the 8081 port of the virtual
#     machine and it should be able to explore the database stored in the
#     spawning-pool container.


# -d --background -> Launch a phpmyadmin container as a background task.
# --name --String -> It should be named roach-warden
# -p --publisher -> its 80 port should be bound to the 8081 port of the virtual
#     machine

docker run --name roach-warden  -d --link spawning-pool:db -p 8081:80 phpmyadmin/phpmyadmin