FROM dchinchure/mediawiki:3.0
RUN apt-get update ; apt-get install wget -y
WORKDIR /var/www
RUN wget https://releases.wikimedia.org/mediawiki/1.35/mediawiki-1.35.0.tar.gz ; tar -zxf mediawiki-1.35.0.tar.gz ; ln -s mediawiki-1.35.0/ mediawiki
COPY LocalSettings.php /var/www/mediawiki/.
CMD service mysql start ; service apache2 start && bash
