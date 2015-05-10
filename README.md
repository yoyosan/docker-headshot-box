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

# Run the application

First, you'll need to edit the docker-compose.yml file and replace the directory where your CS GO replays exist(the one that mounts a local directory to /root/hsbox/demos).
After, run the following command:

```
sudo docker-compose up
```

Go to http://localhost:4000 to use the application.

# Change log

May 10th
* update to use the Linux build
* get rid of wine and other unuseful packages
* update to Oracle Java 8
* fix issue with `demoinfogo` not running due to missing `libc6-i386` package

May 9th
* first version

# Issues

* Watch and Hightlights buttons will not work. Some changes need to be done in the headshot-box project.
* Need to test on Windows
