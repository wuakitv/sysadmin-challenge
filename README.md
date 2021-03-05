# Rakuten TV SysAdmin/DevOps challenge

## Introduction

We need to deploy a new microservice that given a `GET` request to the `/hello` endpoint it will return a JSON response with the following content:

```json
{ "hello": "world" }
```

## Architecture

This microservice will have two components:
* Web Application
* Web proxy

### Web Application

Write a simple HTTP application in **any language** that listens to the port 8080. The application only needs to respond to following request:

> `GET /hello`
> Expected response: `{ "hello": "world" }`
> Expected status: `200`

Example:
```
$ curl http://localhost:8080/hello
{ "hello": "world" }
```

Any language can be used to develop this application, but we recommend you to use a simple language and framework.

### Web Proxy

A reverse HTTP proxy needs to handle all the requests and send them to the backend application.

Requirements for the proxy:
* Pass `HTTP` (port 80) requests to the backend application (port 8080)
* Pass `HTTPS` requests (port 443) to the backend application (port 8080) **(OPTIONAL)**
  * In case `HTTPS` is implemented, redirect port 80 requests to 443

We suggest to use `Nginx` or `Apache` as the proxy application, but any other software will also be accepted.

## Deployment

Using **one single command** we want to deploy all the required infrastructure for this application to work. After the application is working, we should get the following result:

```
$ curl -L http://IP_ADDRESS/hello
{ "hello": "world" }
```

## Required files

### README.md

The provided solution needs to be uploaded into a public GitHub repository with a `README.md` file providing the following information:

1. Clear instructions on how to use your solution. The clarity and precision of these instructions will be a key part of the test.
2. Software requirements.
3. The rationale explaining why you chose this solution over others.

Please make sure the names *Rakuten*, *Rakuten TV* or *Wuaki* are not referenced in any place in your code or documentation.

### ANSWERS.md

Please answer the following questions in a markdown formated file called `ANSWERS.md`:

1. How long did it take to finish the test?
2. If you had more time, how could you improve your solution?
3. What changes would you do to your solution to be deployed in a production environment?
4. Why did you choose this language over others?
5. What was the most challenging part and why?

### whoami.json

Please, describe yourself using JSON.

## Additional notes

* If `HTTPS` is implemented, the certificate can be self-signed.
* Simplicity is valued over complexity.
* If you get stuck in any step, you can still submit your proposal and explain the challenges you faced and what you did to try to solve them.
* Commit from the very beginning and commit often. We value the possibility to review your git log.
