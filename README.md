# Docker image PHP (PHP-FPM - Alpine Linux)

![Docker Automated build](https://img.shields.io/docker/automated/asapdotid/php?style=flat-square)
![docker hub](https://img.shields.io/docker/pulls/asapdotid/php.svg?style=flat-square)
![docker hub](https://img.shields.io/docker/stars/asapdotid/php.svg?style=flat-square)
![Github](https://img.shields.io/github/stars/asapdotid/docker-php.svg?style=flat-square)

## Overview

This is a Dockerfile/image to build a container for PHP-FPM base from (`webdevops/php:8.1-alpine`) [doc](https://github.com/webdevops/Dockerfile/tree/master/docker/php). The container also has the ability to setup with composer

Custom from original `asapdotid/php`:

-   Timezone (default: Asia/Jakarta)
-   PHP-FPM
-   Composer

## Environment Variables

| Environment     | Default      | Description                                       |
| --------------- | ------------ | ------------------------------------------------- |
| APPLICATION_UID | 1000         | PHP-FPM UID (Effective user ID)                   |
| APPLICATION_GID | 1000         | PHP-FPM GID (Effective group ID)                  |
| TIMEZONE        | Asia/Jakarta | Timezone for OS and PHP                           |
| APP_ENV         | develpment   | For build `development` or `production`           |
| SKIP_COMPOSER   | 0            | Support for composer install in application mount |

## Versioning

| Docker Tag | Git Release | Composer Version | PHP Version | Alpine Version |
| ---------- | ----------- | ---------------- | ----------- | -------------- |
| latest     | Main Branch | 2.x.x            | 8.1.13      | 3.17           |
| 1.0.0      | Main Branch | 2.x.x            | 8.1.13      | 3.17           |

### Links

-   [https://github.com/asapdotid/docker-php](https://github.com/asapdotid/docker-php)
-   [https://registry.hub.docker.com/u/asapdotid/php/](https://registry.hub.docker.com/u/asapdotid/php/)

## Quick Start

To pull from docker hub:

```
docker pull asapdotid/php:${IMAGE_VERSION}
```

### Running

To simply run the container:

```
docker run -d asapdotid/php:latest
```

You can then browse to `http://<DOCKER_HOST>` to view the default install files. To find your `DOCKER_HOST` use the `docker inspect` to get the IP address (normally 172.17.0.2)

## License

MIT / BSD

## Author Information

This Code was created in 2022 by [Asapdotid](https://github.com/asapdotid).
