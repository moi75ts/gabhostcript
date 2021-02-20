yum -y update
dnf install dnf-utils http://rpms.remirepo.net/enterprise/remi-release-8.rpm -y
sudo dnf module reset php -y
sudo dnf module enable php:remi-8.0 -y

sudo dnf install php php-cli php-gd php-mysql php-pdo php-mbstring php-tokenizer php-bcmath php-xml php-fpm php-curl php-zip -y
yum install nginx -y
yum install git-core -y

firewall-cmd --add-port=80/tcp --permanent
firewall-cmd --add-port=443/tcp --permanent
firewall-cmd --reload
setsebool httpd_can_network_connect 1
setsebool httpd_can_network_connect_db 1
mkdir /var/www/ -p
cd /var/www/
git clone https://github.com/moi75ts/gabhost
cd gabhost
mv host.conf /etc/nginx/conf.d/
