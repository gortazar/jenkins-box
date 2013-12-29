# Jenkins Box

Setup a VM with Jenkins & Sonarqube ready to be used as a CI server for Java and Php. It is based on the original dpree/jenkins-box.

![Jenkins Box](./jenkins-box.png)

## Features

- [Jenkins](http://jenkins-ci.org/) with port forwarding to port 8080
- [Sonarqube](http://www.sonarqube.org/) configured to use mysql with port forwarding to port 9000
- [Mysql](http://www.mysql.com/) as database backend for Sonarqube
- Build [Java](https://www.java.com/) projects using [JDK](http://www.oracle.com/technetwork/java/javase/downloads/index.html)
- Build [Php](http://php.net/) projects using Php

## Getting Started

Ensure that the dependencies are setup and then just execute:

    ./bootstrap.sh

When everything went fine start yout VM:

    vagrant up

Then open your browser and visit jenkins:

    open http://localhost:8080

And open sonar:

    open http://localhost:9000

## Manage Jenkins configuration

After each time you made changes to the global Jenkins configuration, plugins or jobs just do:

    grunt jenkins-backup

This will backup all stuff to the jenkins-configuration folder. You may put it under version control, yay!

You can install jenkins configuration using:

    grunt jenkins-install

When you added / removed plugins you must restart Jenkins:

    open http://localhost:8080/safeRestart

## Dependencies

- Vagrant 1.2+
- Ruby + Bundler
- Chef + Berkshelf

## License

Copyright (c) 2013 Jens Bissinger. See [LICENSE.txt](LICENSE.txt).

Maintainer: Patxi Gortázar <patxi.gortazar@gmail.com>


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/dpree/jenkins-box/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

