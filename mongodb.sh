cp mongodb.repo /etc/yum.repos.d/mongodb.repo
dnf install mongodb-org -y 
sed -i  's/127.0.0.0/0.0.0.0/' /etc/mongod.conf
systemctl enable mongod 
systemctl start mongod 
systemctl restart mongod