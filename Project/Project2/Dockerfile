FROM centos:latest
MAINTAINER hrudaya.r7@gmail.com
RUN yum install -y httpd
  zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page117/classic-luxury.zip /var/www/html
WORKDIR /var/www/html
RUN unzip luxury.zip
RUN cp -rvf luxury/* .
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80


