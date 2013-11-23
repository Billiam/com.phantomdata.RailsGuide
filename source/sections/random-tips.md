# Random Tips

## Introduction

These are a collection of problems that Rails developers (new and old alike) run into.  We hoped to chronicle them here for an easy to remember repository of our issues.

## Action Filters

* Remember kids, if an object isn't saving the way you'd expect - and isn't throwing an error - you've probably got an action filter somewhere (before_filter, after_filter, etc) that's not returning true.  If a filter method returns anything but true, the save chain will silently cancel and cause you to lose all your hair.

## Postgresql

### Creating Databases and Users

* `sudo -u postgres psql`
* `template1=# CREATE ROLE $app_name WITH SUPERUSER LOGIN PASSWORD $password;`
* `template1=# create database $app_name owner $app_name;`