# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    03.sh                                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mnkebeny <mnkebeny@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/05 13:43:01 by mnkebeny          #+#    #+#              #
#    Updated: 2019/10/07 14:47:47 by mnkebeny         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# 3 - Define the variables needed by your virtual machine Char in the general env of your
#     terminal, so that you can run the docker ps command without errors. You have
#     to fix all four environment variables with one command, and you are not allowed
#     to use your shell’s builtin to set these variables by hand.

eval $(docker-machine env Char)
