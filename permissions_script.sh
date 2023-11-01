#!/bin/bash

# Set ownership and permissions for directories
sudo chmod g+s /var/www/html/

find /var/www/html/ -type d -execdir chown apache:apache {} \; -execdir chmod 750 {} \;

# Set ownership and permissions for files
find /var/www/html/ -type f -execdir chown apache:apache {} \; -execdir chmod 640 {} \;


#Single Line Command
#find /var/www/html/ \( -type d -execdir chown apache:apache {} \; -execdir chmod 750 {} \; \) -o \( -type f -execdir chown apache:apache {} \; -execdir chmod 640 {} \; \)
