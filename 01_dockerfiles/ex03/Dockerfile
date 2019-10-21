# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mnkebeny <mnkebeny@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/15 09:32:06 by mnkebeny          #+#    #+#              #
#    Updated: 2019/10/16 09:40:46 by mnkebeny         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM ubuntu

# - Install and configure the necessary dependencies
# RUN apt-get update
# RUN apt-get install -y ca-certificates openssh-server

# - Postfix to send notification emails. If you want to use another solution 
#   to send emails please skip this step and configure an external SMTP server 
#   after GitLab has been installed.
# RUN apt-get install -y postfix

# - Add the GitLab package repository 
# RUN wget https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh
# RUN bash -l -c "chmod 777 script.deb.sh"
# RUN bash -l -c "./script.deb.sh"

# - install the package
# RUN apt-get install gitlab-ce
# RUN gitlab-ctl reconfigure
# - Configure Gitlab Main URL
#   RUN bash -c "/etc/gitlab"
#   RUN bash -c "vim gitlab.rb"
#       - external_url 'http://gitlab.example.com'    

# - Generate SSL Let's encrypt and DHPARAM Certificate
#   In this step, we will enable the HTTPS protocol for GitLab.
#   I will use a free SSL certificates provided by let's encrypt for the gitlab domain name.

# - Install letsencrypt command-line tool with apt command.
# RUN apt-get install letsencrypt -y 
# - Please select the geographic area in which you live.[1. Africa]
# RUN bash -l -c "echo '1'"
# - Please select the city or region corresponding to your time zone.[24.Harare]
# RUN bash -l -c "echo '24'"


# - When the installation is complete, generate a new certificate 
#   for the gitlab domain name with the command below.

# RUN letsencrypt certonly -d gitlab.example.com

# - How would you like to authenticate with the ACME CA?
#   1: Spin up a temporary webserver (standalone)
#   2: Place files in webroot directory (webroot)
# RUN bash -l -c "echo '1'"
# RUN bash -l -c "mnkebeny@student.wethinkcode.co.za"
# RUN bash -l -c "echo 'A'"
# RUN bash -l -c "echo 'N'"


