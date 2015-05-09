This is a docker image for the headshot-box project.

# Install docker

```
sudo apt-get update $ sudo apt-get install wget
wget -qO- https://get.docker.com/ | sh
```

# Install docker-compose

```
curl -L https://github.com/docker/compose/releases/download/1.2.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
```

# Run the container

First, go to the docker-compose.yml file and replace the directory where your CS GO replays exist(the one that mounts a local directory to /root/hsbox/demos).

```
sudo docker-compose up
```

Go to http://localhost:4000 to use the application.
Don't forget to go to Settings and change Demo directory to `/root/hsbox/demos`.

# Issues

* Demo parsing isn't working yet. We'll need to wait for the Linux binary.
* Watch and Hightlights buttons will not work. Some changes need to be done in the headshot-box project.