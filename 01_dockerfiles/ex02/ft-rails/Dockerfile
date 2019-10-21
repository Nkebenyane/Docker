# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mnkebeny <mnkebeny@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/14 13:26:10 by mnkebeny          #+#    #+#              #
#    Updated: 2019/10/15 09:02:21 by mnkebeny         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# You are going to create your first Dockerfile to containerize Rails 
# applications. That’s a special configuration: this particular Dockerfile will
# be generic, and called in another Dockerfile, that will look something like this:

# Reference 
# => https://hub.docker.com/_/ruby/

# ========
# => $ docker build -t my-ruby-app .
# => $ docker run -it --name my-running-script my-ruby-app


# ==== We are creating an app ====
# gem => brew/apt-get comes with a ruby container
# rails => compilar


# runing => docker build -t ft-rails .
# interacting => docker run -it ft-rails bash

FROM ruby:2.5

# - gem is simillar to apt, it comes with ruby [we use gem to install rails]
# - Rails is a web application development framework written in the Ruby programming language.
# - It is designed to make programming web applications easier by making assumptions 
#   about what every developer needs to get started.
RUN bash -l -c "gem install rails"

# - Node.js [To create/use the app you will need node.js]
RUN apt-get update
RUN apt-get -y install node.js
RUN apt-get -y install yarn 

# - The comes with a databas [you migth need this to interact with the database]
RUN apt-get install sqlite3 -y
 
# - Creating an app called app
RUN rails new app

# - copyimg th .yml file to app folder
ADD https://raw.githubusercontent.com/rails/webpacker/master/lib/install/config/webpacker.yml app/config/

# - Copy app [rails application] to opt
RUN bash -l -c "cp -r app opt/"

# - Remove/delete the app in the root
RUN bash -l -c "rm -rf app"

WORKDIR opt/app
EXPOSE 3000

#http://www.xyzpub.com/en/ruby-on-rails/3.2/seed_rb.html
RUN bundle install
RUN rake db:migrate
RUN rake db:seed

# - docker build -t ft-rails:on-build .
# - docker build -t ex02 .
# - docker run -it --rm -p 3000:3000 ex02


