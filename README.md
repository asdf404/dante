# Dante socks5

Based on [vimagick/dante](https://hub.docker.com/r/vimagick/dante/).

## Usage

```
# docker-compose.yml

version: '3'
services:
  socks:
    image: asdf404/dante
    ports:
      - 1080:1080
    restart: always
    environment:
      DANTE_USER: user
      DANTE_PASSWORD: password
```

## License

WTFPL
