# flnpw/docker-compose

This repo has docker-compose installed for using on multilayer builds, as a installer or
as is.

## How to use

Using this image in a multilayered Dockerfile and fetching docker-compose from it:
```
FROM flnpw/docker-compose AS docker-compose
...
FROM myimage
...
COPY --from=docker-compose /usr/local/bin/docker-compose /<wherever>/docker-compose
...
```

Using this image as a local installer:
```
docker run --rm -ti \
  --entrypoint='' \
  -v /usr/local/bin:/target \
  flnpw/docker-compose \
  cp /usr/local/bin/docker-compose /target
```


