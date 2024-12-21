dnf module disable nodejs -y
dnf module enable nodejs:20 -y
dnf install nodejs -y
useradd roboshop
rm -f /app
mkdir /app
curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue-v3.zip 
cd /app 
unzip /tmp/catalogue.zip
cd /app 
npm install 
cp catalogue.service /etc/systemd/system/catalogue.service
systemctl deamon-reload
systemctl enable catalogue
systemctl start catalogue
