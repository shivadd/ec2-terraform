# jenkins-terraform
jenkins-terraform


sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo

sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key 

sudo yum install jenkins -y

sudo systemctl enable jenkins

sudo systemctl start jenkins
