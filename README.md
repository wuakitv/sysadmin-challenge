# Wuaki.tv SysAdmin/DevOps challenge

## Introduction

We need to deploy a simple web application written in Python using the [Flask](http://flask.pocoo.org/) framework. This application will listen to the port 5000 (by default) and return the string _"Hello World!"_ . It needs to access data stored into a MySQL server.

Using any technology you like, deploy this application so we can get the expected result using the `curl`command as specified below.

Using one single command we want to deploy all the required infrastructure for this application to work. After the application is working, we should get the following result:

```
$ curl http://127.0.0.1:5000
Hello world!
```

* **Note**: host and port may be different.

The provided solution needs to be uploaded into a public GitHub repository with a `README.md` file providing the following information:
* Instructions on how to run your solution.
* Requirements.
* The rationale explaining why you chose this solution over others.

## Provided files

#### app.py

The application itself. It should not be modified.

To configure the connection to the MySQL server the following environment variables are required:
* `MYSQL_USER` User to connect to MySQL
* `MYSQL_PASS` Password to connect to MySQL
* `MYSQL_HOST` Host to connect to MySQL
* `MYSQL_DB` Database to be used

It has the following requirements:
* Python 2.7
* MySQL 5.7
* Pip modules
  * Flask==0.12
  * Flask-MySQL==1.4.0

#### app.sql

Data to be imported into MySQL in SQL format. It can be imported directly to a MySQL server.

## Suggestions

* We value simplicity over complexity.
* If you cannot make the application work, you can still submit your proposal and explain the challenges you faced and what you did to try to solve them.
* Commit from the very beginning and commit often. We value the possibility to review your git log.
* There are many possible solutions to this exercise. Some technologies you can use (but you're not limited to) are:
  * Docker
  * Docker Compose
  * Kubernetes
  * Vagrant
  * Puppet
  * Ansible
