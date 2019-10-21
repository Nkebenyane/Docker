# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    01.sh                                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mnkebeny <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/05 13:03:33 by mnkebeny          #+#    #+#              #
#    Updated: 2019/09/05 13:31:48 by mnkebeny         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


# (01) Create a virtual machine with docker-machine using the virtualbox driver, and
#      named Char.

docker-machine create -d virtualbox Char
