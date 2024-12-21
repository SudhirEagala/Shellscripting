dnf module disable nginx -y
dnf module enable nginx:1.24 -y
dnf install nginx -y
systemctl enable nginx 
systemctl start nginx 
rm -rf /usr/share/nginx/hcurl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend-v3.ziptml/* 

cd /usr/share/nginx/html 
unzip /tmp/frontend.zip
cp nginx.conf /etc/nginx/nginx.conf
systemctl restart nginx
