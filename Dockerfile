# Base image
FROM ubuntu:16.04

# Setting mantainer user 
LABEL mantainer="juanbalceda@gmail.com"

# Executing commands 
RUN apt-get update
RUN apt-get -y install apache2
RUN apt-get -y install wget
RUN apt-get -y install unzip
RUN wget https://github.com/JuanBalceda/me/archive/master.zip
RUN unzip master.zip
RUN cp -a /me-master/public/* /var/www/html 

# Specifying network ports at runtime
EXPOSE 82

# Defaults
CMD /usr/sbin/apache2ctl -DFOREGROUND
