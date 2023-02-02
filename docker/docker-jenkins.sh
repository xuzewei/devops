docker run -p 8080:8080 -p 50000:5000 --name jenkins \
    -u root \
    -v /mydata/jenkins_home:/var/jenkins_home \
    -d jenkins/jenkins:lts
