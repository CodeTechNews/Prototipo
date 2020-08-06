FROM ubuntu

RUN apt-get update && apt-get upgrade -y
RUN apt-get install net-tools curl -y
RUN apt-get install apt-transport-https ca-certificates curl software-properties-common since apt-utils -y
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
RUN apt update && apt upgrade
RUN apt-cache policy docker-ce
RUN apt-get install docker.io -y 
RUN apt-get install git -y
RUN curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose
RUN git clone https://github.com/Jericssonjcg/docker-wordpressv1.git
RUN docker-compose up
