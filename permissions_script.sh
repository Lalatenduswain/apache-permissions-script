#!/bin/bash

# Set the web user variable
if id -u www-data &>/dev/null; then
    web_user="www-data"
elif id -u apache &>/dev/null; then
    web_user="apache"
else
    echo "Web user 'www-data' or 'apache' not found."
    exit 1
fi

# Set ownership and permissions for directories and files
find /var/www/html/ -type d -execdir chown $web_user:$web_user {} \; -execdir chmod 750 {} \;
find /var/www/html/ -type f -execdir chown $web_user:$web_user {} \; -execdir chmod 640 {} \;

# Set the setgid bit on the directory
sudo chmod g+s /var/www/html/
