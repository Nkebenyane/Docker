# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    24.sh                                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mnkebeny <mnkebeny@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/08 15:25:22 by mnkebeny          #+#    #+#              #
#    Updated: 2019/10/08 16:22:07 by mnkebeny         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# 24. Launch a rabbitmq SERVICE that will be named orbital-command. You should 
#     define a specific user and password for the RabbitMQ service, they can be 
#     whatever you want. This service will be on the overmind network.

#    https://docs.docker.com/engine/reference/commandline/service/

#    docker service create -d  --help
#    --name orbital-command = naming connecting to a server
#    -d, --detach = Exit immediately instead of waiting for the service to converge
#    -e, --env list = Set environment variables
#    https://hub.docker.com/_/rabbitmq

docker service create -d --network overmind --name orbital-command -e RABBITMQ_DEFAULT_USER=root -e RABBITMQ_DEFAULT_PASS=root rabbitmq

