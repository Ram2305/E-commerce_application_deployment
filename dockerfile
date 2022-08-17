FROM httpd
COPY . /usr/local/apache2/htdocs/
# whatever source code present in the current dir (ecomm) copy it to root dir of httpd
EXPOSE 80
