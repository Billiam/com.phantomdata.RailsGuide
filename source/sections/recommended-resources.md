# Recommended Resources

## Introduction
The Rails community is active and vibrant.  Its like a wonderful sea of technicolor narwals with Kenny G riding on top.  Its constantly changing, moving and shifting such that even Google has trouble keeping up.  The intention here is to present a core set of resources that have proven to be a consistently useful reference point.

## Core Documentation

* [RailsGuides](http://guides.rubyonrails.org/)
   Rails has a fantastic set of core documentation.  From best practices and methods surrounding getting data from your database to validations to how to test your code; its all there in a clear well-laid out manner.

## Gems You Should Use

* [Devise](https://github.com/plataformatec/devise)
  Opinions differ; but while you're learning - its best to push aside user authentication and get to the other stuff.  Devise lets you breeze right into it.
* [Paperclip](https://github.com/thoughtbot/paperclip)
  Paperclip is the defacto standard for attaching files to models in Rails.  Like it or not, every application has file attachment in some way.  Some like CarrierWave, but Paperclip is the most popular and well documented.

## Projects You Should Use

1. [Travis CI](http://travis-ci.org)
   As you're learning the Rails, testing should be foremost in your mind.  Alongside each round of figuring out how to do something; you should figure out how to write tests for it.  Once you've settled on a testing framework, its best to get it into Travis right away.  You're learning, right?  Don't lock that code away.  Put it on github, use Travis and accept feedback happily.
2. [Code Climate](http://code-climate.org)
   Code Climate rolls security analysis, code coverage and code complexity all up into one neat little package.  Its also free for open source projects.  Roll over there and get yourself setup.
3. [DotEnv](https://github.com/bkeepers/dotenv)
   Don't store your configuration variables in source control.  Use environmental variables and a .env file to spin them up on your project.