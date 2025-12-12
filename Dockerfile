#FROM centos:latest
FROM ubuntu:24.04
MAINTAINER divesh saini <learningcloud409@gmail.com>
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

#RUN yum -y install httpd
#zip\
#unzip

#ADD http://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/

#WORKDIR /var/www/html/
#RUN unzip photogenic.zip
#RUN cp -rvf photogenic/*.
#RUN rm -rf photogenic photogenic.zip
#CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
COPY index.html /var/www/html/
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

EXPOSE 80 443
