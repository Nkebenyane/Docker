# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    14.sh                                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mnkebeny <mnkebeny@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/12 12:47:06 by mnkebeny          #+#    #+#              #
#    Updated: 2019/09/12 13:28:21 by mnkebeny         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# 14. Launch a wordpress container as a background task, just for fun.
#     The container should be named lair, its 80 port should be bound to
#     the 8080 port of the virtual machine, and it should be able to use the
#     spawning-pool container as a database service. You can try to access lair
#     on your machine via a web browser, with the IP address of 
#     the virtual machine as a URL.
#     Congratulations, you just deployed a functional Wordpress website in two com- mands!

#  -d --background -> Launch a wordpress container as a background task.
#  --name --string -> The container should be named lair.
#  -p --publish list -> Publish a container's port(s) to the host
#  --link -> and it should be able to use the spawning-pool container as a database service


docker run -d --name lair -p 8080:80 --link spawning-pool:mysql wordpress