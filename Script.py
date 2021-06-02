from os import system

system("dnf install httpd -y")

system("dnf install wget vim -y")

system("dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y")

system("dnf install https://rpms.remirepo.net/enterprise/remi-release-8.rpm -y")

system("dnf module install php:remi-7.4 -y")

system("dnf install php-mysqlnd -y")

system("systemctl start httpd")

system("systemctl enable httpd")

system("wget https://wordpress.org/latest.tar.gz")

system("tar -xvzf latest.tar.gz -C /var/www/html")

system("dnf install mysql -y")
