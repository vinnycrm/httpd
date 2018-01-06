# dockerfiles-centos-httpd

CentOS Dockerfile for Apache httpd


## Build

Copy the sources down and do the build

```
# docker build --rm -t <username>/httpd .
```

## Usage

To run (if port 80 is available and open on your host):

```
# docker run -d -p 80:80 <username>/httpd
```

To the port that the container is listening on:

```
# docker ps
```

## Test

```
# curl http://localhost
```
