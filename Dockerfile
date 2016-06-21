FROM ubuntu
RUN apt-get update
RUN apt-get install -y apache2
RUN /etc/init.d/apache2 start
RUN echo "Server New" > /var/www/html/index.html
CMD /usr/sbin/apache2ctl -D FOREGROUND
EXPOSE 80
