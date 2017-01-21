FROM saltbase

RUN apt-get update \
 && apt-get install -y salt-master \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists

EXPOSE 4505 4506

ENTRYPOINT ["salt-master"]