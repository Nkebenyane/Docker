# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    30.sh                                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mnkebeny <mnkebeny@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/08 17:31:53 by mnkebeny          #+#    #+#              #
#    Updated: 2019/10/08 17:37:03 by mnkebeny         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# 30. Increase the number of copies of the marines service up to twenty, because
#     there’s never enough Marines to eliminate Zergs. (Remember to take a look
#     at the tasks and logs of the service, you’ll see, it’s fun.)

docker service scale marines=20 
