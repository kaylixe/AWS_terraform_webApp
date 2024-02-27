#!/bin/bash
sudo apt update
sudo apt install git mysql-client -y

git clone -b main https://github.com/kaylixe/AWS_terraform_webApp.git

mysql -h ${rds-endpoint} -u ${dbuser} --password=${dbpass} accounts < /home/ubuntu/AWS_terraform_webApp/db_backup.sql