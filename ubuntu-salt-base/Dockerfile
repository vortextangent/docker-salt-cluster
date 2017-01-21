FROM ubuntu
RUN apt-get update \
 && apt-get install -y curl wget \
 && wget -O - https://repo.saltstack.com/apt/ubuntu/16.04/amd64/2016.11/SALTSTACK-GPG-KEY.pub | apt-key add - \
 && echo deb http://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest xenial main | tee /etc/apt/sources.list.d/saltstack.list \
 && apt-get update \
 && apt-get install -y python-pyinotify \
    salt-api \
    salt-cloud \
    salt-minion \
    salt-ssh \
    salt-syndic \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists
ENTRYPOINT ["sh"]