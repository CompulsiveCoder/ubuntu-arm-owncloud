FROM armv7/armhf-ubuntu

#RUN apt-get -y install apache2 mysql-server libapache2-mod-php5 php5-gd php5-json php5-mysql php5-curl php5-intl php5-mcrypt php5-imagick

RUN apt-get update && apt-get -y install apache2 bzip2 # apache2-doc

RUN apt-get -y install wget

RUN wget https://download.owncloud.org/community/owncloud-8.2.3.tar.bz2 && tar -xjf owncloud-8.2.3.tar.bz2

RUN cp -r owncloud  /var/www/

RUN chown -R www-data:www-data /var/www/owncloud/
