# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    12.sh                                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mnkebeny <mnkebeny@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/12 09:29:09 by mnkebeny          #+#    #+#              #
#    Updated: 2019/09/12 12:21:10 by mnkebeny         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#12. Launch a mysql container as a background task. It should be able to restart
#    on its own in case of error, and the root password of the database should
#    be Kerrigan. You will also make sure that the database is stored in the
#    hatchery volume, that the container directly creates a database named 
#    zerglings, and that the container itself is named spawning-pool.


# -d -> runing mysql container as background task
# --name -> container named spawning-pool.
# --restart=on-faillure:10 -> It should be able to restart on its own in case
#                             of error.
# -e -> env list = Set environment variables
#  MYSQL_ROOT_PASSWORD -> root password of the database should be Kerrigan
#  MYSQL_DATABASE -> that the container directly creates a database named zerglings
# -v hatchery -> You will also make sure that the database is stored in the
#                hatchery volume.
# 

docker run -d --name spawning-pool --restart=on-failure -e MYSQL_ROOT_PASSWORD=Kerrigan -e MYSQL_DATABASE=zerglings -v hatchery:/var/lib/mysql mysql mysql --default-authentication-plugin=mysql_native_password
