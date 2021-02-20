dnf install dnf-utils http://rpms.remirepo.net/enterprise/remi-release-8.rpm
sudo dnf module reset php
sudo dnf module enable php:remi-8.0

sudo dnf install php php-cli php-gd php-mysql php-pdo php-mbstring php-tokenizer php-bcmath php-xml php-fpm php-curl php-zip
yum install nginx
yum install git-core

firewall-cmd --add-port=80/tcp --permanent
firewall-cmd --add-port=443/tcp --permanent
firewall-cmd --reload
sebool httpd_can_network_connect 1
setsebool httpd_can_network_connect_db 1
