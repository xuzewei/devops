docker run --detach \
    --publish 10443:10443 --publish 1080:1080 --publish 1022:22 \
    --name gitlab \
    --restart always \
    --volume /mydata/gitlab/config:/etc/gitlab \
    --volume /mydata/gitlab/logs:/var/log/gitlab \
    --volume /mydata/gitlab/data:/var/opt/gitlab \
        gitlab/gitlab-ce:13.2.3-ce.0
