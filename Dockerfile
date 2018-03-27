FROM httpd:2.4
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./httpd-vhosts.conf /usr/local/apache2/conf/extra/httpd-vhosts.conf
COPY ./public/ /usr/local/apache2/htdocs/
