# Machine Setup

## Introduction

Setting up your system to work with Rails the first time is hard.  How do you even install Ruby?  What's the right way?  Its the subject of a lot of debate.  In this document I don't aim to answer or even participate in that debate.  I want to present one clear way for each system that actually works.  kthxbai

## Linux (Recommended: Ubuntu or Debian)

* First install the the core software for developing on a Linux machine:
   `sudo apt-get install build-essential libssl-dev git subversion imagemagick libmagick-dev curl automake  libpcre3-dev bison libmysqlclient-dev libxslt-dev libpq-dev libreadline-dev libyaml-dev libcurl4-openssl-dev postgresql postgresql-server-dev-9.1 git nodejs`
* Install Ruby
  * Download the latest version from http://ruby-lang.org
  * Compile:
       `./configure --prefix=/opt/rubies/ruby-$VERSION_NUMBER && make && sudo make install`
* Install chruby
  * The actual install:
      `wget -O chruby-0.3.7.tar.gz https://github.com/postmodern/chruby/archive/v0.3.7.tar.gz &&  tar -xzvf chruby-0.3.7.tar.gz && cd chruby-0.3.7/ && sudo make install`
  * Set it up in your profile file:
      `echo "source /usr/local/share/chruby/chruby.sh" >> ~/.bash_profile`
  * Change to the desired Ruby:
      `chruby 2.0`

## OSX Mavericks

* Go to the Apple Developer page, login with a dev account and download the Xcode Command Line Tools OR install them through Xcode if you've already gotten that
* Install homebrew (http://brew.sh/) for funsies
* Install imagemagick and postgresql through homebrew
  `brew install imagemagick postgresql`
* Install Ruby
  * Install ruby-install
       `wget -O ruby-install-0.3.1.tar.gz https://github.com/postmodern/ruby-install/archive/v0.3.1.tar.gz && tar -xzvf ruby-install-0.3.1.tar.gz && cd ruby-install-0.3.1/ && sudo make install`
  * Install Ruby using ruby-install
       `ruby-install ruby 2.0`
* Install chruby
  * The actual install:
      `wget -O chruby-0.3.7.tar.gz https://github.com/postmodern/chruby/archive/v0.3.7.tar.gz &&  tar -xzvf chruby-0.3.7.tar.gz && cd chruby-0.3.7/ && sudo make install`
  * Set it up in your profile file:
      `echo "source /usr/local/share/chruby/chruby.sh" >> ~/.bash_profile`
  * Change to the desired Ruby:
      `chruby 2.0`

## Windows

* Install VirtualBox (https://www.virtualbox.org/)
* Download Ubuntu (http://ubuntulinux.org)
* Setup a new VM with Ubuntu
* Follow Linux instructions

*See any Rails Committee Member for a pre-built VM*