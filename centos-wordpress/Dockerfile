FROM jdeathe/centos-ssh
MAINTAINER Sarath kumar  <kumar.sarath588@gmail.com>
RUN yum update all && yum install -y wget curl initscripts
RUN curl -L https://www.chef.io/chef/install.sh | bash
RUN echo '192.168.200.244 chef.acoe.com' >> /etc/hosts
RUN wget https://raw.githubusercontent.com/kumarsarath588/CHEF/master/.chef/client.rb
RUN wget https://raw.githubusercontent.com/kumarsarath588/CHEF/master/.chef/validation.pem
RUN mkdir /etc/chef && mv {client.rb,validation.pem} /etc/chef/
#RUN hostnamectl set-hostname guacamole
RUN cd /etc/chef/ && cp {client.rb,knife.rb}
RUN cat /etc/chef/{client.rb,knife.rb}
RUN cat /etc/hosts
RUN echo '192.168.200.244 chef.acoe.com' >> /etc/hosts && cd /etc/chef/ && knife ssl fetch
RUN yum install -y make deltarpm tar
RUN echo '192.168.200.244 chef.acoe.com' >> /etc/hosts && chef-client -o wordpress
