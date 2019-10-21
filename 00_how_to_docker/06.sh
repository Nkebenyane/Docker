# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    06.sh                                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mnkebeny <mnkebeny@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/10 16:45:47 by mnkebeny          #+#    #+#              #
#    Updated: 2019/09/11 09:08:07 by mnkebeny         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# 6. Launch an nginx container, available on Docker Hub, as a background task. 
#    It should be named overlord, be able to restart on its own, and have its 
#    80 port attached to the 5000 port of Char. You can check that your 
#    container functions properly by visiting
#    http://<ip-de-char>:5000 on your web browser.


# -- Notes --
# -d, -detach -> it will run nginx container in the background and print container ID
# --name, string -> Assign a name to the container (to nginx container)
# -p, --publish list — Publish a container's port(s) to the host

docker run -d -p 5000:80 --name overlord --restart=always nginx