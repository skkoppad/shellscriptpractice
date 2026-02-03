!#/bin/bash

USERID=$(id -u)
if [USERID -ne 0]; then
echo "pls run this script with root user"
fi


echo "installing the nginx"
dnf install nginx -y

if [$? -ne 0]; then 
echo "Installing the nginx...failur"
exit 1
else 
echo "installing the nginx...sucess"
exit 1
if