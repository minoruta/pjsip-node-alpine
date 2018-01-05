# pjsip-node-alpine - Alpine linux with Pjsip & Nodejs
This is an image for docker which provides an alpine linux with pjsip libraries and environment of nodejs.

## Layers of the image

| Name of image | Description      |
|---------------|---------------|
| minoruta/pjsip-node-alpine | image of this project |
| [minoruta/node-alpine](https://github.com/minoruta/node-alpine) | environment for nodejs |
| [alpine](https://alpinelinux.org) | alpine linux |

## Pull
- `docker pull minoruta/pjsip-node-alpine`

## Build & run
```
$ docker build -t pjsip-node-alpine .
$ docker container run -it pjsip-node-alpine /bin/ash
```

## History

| Tag   | [pjsip](http://www.pjsip.org) | [minoruta/node-alpine](https://github.com/minoruta/node-alpine)
|-------|-------------------------------|------------
| 2.7.1 | 2.7.1                         | 8.9.3

## [License & Copyright](./LICENSE)
