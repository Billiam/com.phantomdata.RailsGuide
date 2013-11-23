# Information

This is a base getting started guide to help you with installing Ruby and Rails properly for the first time.  Many systems ship with a pre-installed version of Ruby that you should just stay away from.  It might seem to work at first, but you will find yourself in a world of hurt down the line.

# Setting Up Your System

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

# Core Documentation

* [RailsGuides](http://guides.rubyonrails.org/)
   Rails has a fantastic set of core documentation.  From best practices and methods surrounding getting data from your database to validations to how to test your code; its all there in a clear well-laid out manner.

# Gems You Should Use

* [Devise](https://github.com/plataformatec/devise)
  Opinions differ; but while you're learning - its best to push aside user authentication and get to the other stuff.  Devise lets you breeze right into it.
* [Paperclip](https://github.com/thoughtbot/paperclip)
  Paperclip is the defacto standard for attaching files to models in Rails.  Like it or not, every application has file attachment in some way.  Some like CarrierWave, but Paperclip is the most popular and well documented.

# Projects You Should Use

1. [Travis CI](http://travis-ci.org)
   As you're learning the Rails, testing should be foremost in your mind.  Alongside each round of figuring out how to do something; you should figure out how to write tests for it.  Once you've settled on a testing framework, its best to get it into Travis right away.  You're learning, right?  Don't lock that code away.  Put it on github, use Travis and accept feedback happily.
2. [Code Climate](http://code-climate.org)
   Code Climate rolls security analysis, code coverage and code complexity all up into one neat little package.  Its also free for open source projects.  Roll over there and get yourself setup.
3. [DotEnv](https://github.com/bkeepers/dotenv)
   Don't store your configuration variables in source control.  Use environmental variables and a .env file to spin them up on your project.