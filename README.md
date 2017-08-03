# nginx_static

基于官方的基础 Centos 镜像，update 后仅安装了 nginx。
配置文件在：
/etc/nginx/nginx.conf
虚拟主机文件：
/etc/nginx/conf.d/nginx.conf
网站目录：
/var/www/html/website
运行：
docker run -d -p 80 —name [custom_name] -v [local_dir]:/var/www/html/website [images_name] nginx
