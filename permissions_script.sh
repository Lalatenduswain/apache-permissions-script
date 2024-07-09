#!/bin/bash

# Check for the web user and set the appropriate variable
if id -u www-data &>/dev/null; then
    web_user="www-data"
    web_group="www-data"
    web_dir="/var/www/html/"
elif id -u daemon &>/dev/null; then
    web_user="daemon"
    web_group="webdev"
    web_dir="/opt/lampp/htdocs/"
else
    echo "Web user 'www-data' or 'daemon' not found."
    exit 1
fi

# Set ownership and permissions for directories and files
find $web_dir -type d -execdir chown $web_user:$web_group {} \; -execdir chmod 750 {} \;
find $web_dir -type f -execdir chown $web_user:$web_group {} \; -execdir chmod 640 {} \;

# Set the setgid bit and sticky bit on the directory
sudo chmod g+s $web_dir
sudo chmod +t $web_dir

echo "Permissions set successfully for $web_dir with user $web_user and group $web_group."
