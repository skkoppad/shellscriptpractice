!#/bin/bash

USERID=$(id -u)
if [USERID -ne 0]; then
echo "pls run this script with root user"
fi 

echo "installing the nginx"
dnf install nginx -y

if [$? -ne 0]; then 
echo "Installing the nginx...failure"
exit 1
else 
echo "installing the nginx...sucess"
fi

echo "installing mysql"
if [$? -ne 0]; then
dnf install mysql -y
exit 1
echo "instaling mysql.. failure"
else
echo "installing mysql.. sucess"
fi

echo "installing nodejs"
dnf install nodejs -y
if [$? -ne 0]; then 
echo "installing nodejs...failure"
exit 1
else 
echo "installing nodejs...sucess"
fi 



