# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    08.sh                                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mnkebeny <mnkebeny@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/11 10:11:01 by mnkebeny          #+#    #+#              #
#    Updated: 2019/09/11 10:23:04 by mnkebeny         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# 8. Launch a shell from an alpine container, and make sure that you can 
#    interact directly with the container via your terminal, and that the 
#    container deletes itself once the shell’s execution is done.

# -i , -- interactive ->  Keep STDIN open even if not attached
# -t , -- tty -> Allocate a pseudo-TTY
# -rm, -- remove the container (alpine)

docker run -it --rm alpine /bin/sh