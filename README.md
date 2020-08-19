# Updog Docker Image
[Updog by sc0tfree](https://github.com/sc0tfree/updog) docker image

## What is Updog?
Updog is a replacement for Python's `SimpleHTTPServer`. It allows uploading and downloading via HTTP/S, can set ad hoc SSL certificates and use HTTP basic auth.

## Usage:
### Defaults:
* `PASSWORD` : `password`, this can be changed to any string, updog uses only `password`, so leave `user` blank when logging in 
* `SSL_MODE` : `false` or `true`
*  updog is using `/input` as main directory

### Run:
```
docker run -v /input:/input -p 9090:9090 -e SSL_MODE=true -e PASSWORD=pass krzysztoof/updog:1.1
```

### Compose:

```
services:

  updog:
    container_name: updog
    image: krzysztoof/updog:1.1
    environment:
      - SSL_MODE=false
      - PASSWORD=password
    volumes: 
      - ./input:/input 
```
