# Jenkins Box

Setup a VM with Jenkins & Sonarqube ready to be used as a CI server for Java and Php. It is based on the original dpree/jenkins-box.

![Jenkins Box](./jenkins-box.png)

## Features

- [Jenkins](http://jenkins-ci.org/) with port forwarding to port 8080
- [Sonarqube](http://www.sonarqube.org/) configured to use mysql with port forwarding to port 9000
- [Mysql](http://www.mysql.com/) as database backend for Sonarqube
- Build [Java](https://www.java.com/) projects using [JDK](http://www.oracle.com/technetwork/java/javase/downloads/index.html)
- Build [Php](http://php.net/) projects using Php

## Installation

### With Vagrant

Ensure that the dependencies are setup and then just execute:

    ./bootstrap.sh

When everything went fine start yout VM:

    vagrant up

Then open your browser and visit jenkins:

    open http://localhost:8080

And open sonar:

    open http://localhost:9000

### Without Vagrant

To install jenkins-box without using vagrant, we first need to setup the environment:

    apt-get update
    apt-get -y install git-core

Then, clone this repository into /opt folder:

    mkdir /opt
    cd /opt
    git clone https://github.com/gortazar/jenkins-box.git

And use the bootstrap script:

    cd jenkins-box
    bootstrap-chef-solo.sh

## Dependencies

- Vagrant 1.2+
- Ruby + Bundler
- Chef + Berkshelf

## License

Copyright (c) 2013 Jens Bissinger. See [LICENSE.txt](LICENSE.txt).

Maintainer: Patxi Gortázar <patxi.gortazar@gmail.com>


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/dpree/jenkins-box/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

