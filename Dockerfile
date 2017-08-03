#Docker nginx for local

FROM centos
MAINTAINER Gary WANG "bashenandi@163.com"
ENV REFRESHED_AT 2017-08-03
RUN yum -y update
RUN rpm -Uvh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm
RUN yum install -y nginx
RUN mkdir -p /var/www/html
ADD nginx/default.conf /etc/nginx/conf.d/
ADD nginx/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
