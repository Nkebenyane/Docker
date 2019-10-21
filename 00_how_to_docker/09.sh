# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    09.sh                                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mnkebeny <mnkebeny@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/11 10:23:31 by mnkebeny          #+#    #+#              #
#    Updated: 2019/10/09 08:52:06 by mnkebeny         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# 9. From the shell of a debian container, install via the container’s
#    package manager everything you need to compile C source code and push it
#    onto a git repo (of course, make sure before that the package manager and
#    the packages already in the container are updated). For this exercise,
#    you should only specify the commands to be run directly in the container.

#    Run docker run -ti --rm debian

   docker run -dt --name debian --restart always debian /bin/bash
   docker exec -it debian /bin/bash -c "apt-get update; apt-get upgrade; apt-get install gcc; apt-get install git" 

# apt-get update
# apt-get upgrade
# apt-get install gcc
# apt-get install git