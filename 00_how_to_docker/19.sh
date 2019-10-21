# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    19.sh                                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mnkebeny <mnkebeny@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/12 14:49:06 by mnkebeny          #+#    #+#              #
#    Updated: 2019/10/08 12:42:30 by mnkebeny         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# 19. Launch a container name Abathur. It will be a Python container, 2-slim
#     version, its /root folder will be bound to a HOME folder on your host,
#     and its 3000 port will be bound to the 3000 port of your virtual machine.
#     You will personalize this container so that you can use the Flask 
#     micro-framework in its latest version. You will make sure that an html
#     page displaying "Hello World" with <h1> tags can be served by Flask. You 
#     will test that your container is properly set up by accessing, via curl 
#     or a web browser, the IP address of your virtual machine on the 3000 port.
#     You will also list all the necessary commands in your repository.



#   To login to the interactive shell of the container
#    - docker exec -it 7c50148540b1 bash

#   - - - - - -  
#   docker exec -it 7c50148540b1 bash -c "echo 'hello world\nto everyone' > hello.txt"

#   -------------
#   docker exec -it 7c50148540b1 bash -c "echo 'from flask import Flask\napp = Flask(__name__)\n@app.route("/")\ndef hello_world():\nreturn "'Hello, World'"' > app.py"

# docker exec "app_$i" bash -c "echo 'server.url=$server_url' >> /home/app/.app/app.config"

docker run --name Abathur -v ~/:/root -p 3000:3000 -dit python:2-slim
docker exec Abathur pip install Flask
# docker exec Abathur bash -c "printf \"hello world\" >> ~/hello.py"

docker exec Abathur bash -c "printf \"from flask import Flask\napp = Flask(__name__)\n@app.route('/')\ndef hello_world():\n\treturn '<h1>Hello, World</h1>' \" >> ~/app.py"

# docker exec Abathur bash -c "printf 'from flask import Flask \n app = Flask(__name__) \n @app.route(\'/\')\ndef hello_world(): \n \t return "'<h1>Hello, World</h1>"\' ' >> ~/app.py"
docker exec -e FLASK_APP=/root/app.py Abathur flask run --host=0.0.0.0 --port 3000