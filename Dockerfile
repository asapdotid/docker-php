FROM webdevops/php:8.1-alpine

ENV APPLICATION_PATH=/app \
    APPLICATION_UID=1000 \
    APPLICATION_GID=1000

ENV TIMEZONE=Asia/Jakarta
ENV PHP_DATE_TIMEZONE=$TIMEZONE
ENV APP_ENV=production

RUN set -x \
    && apk-install \
    tzdata \
    && docker-run-bootstrap \
    && docker-image-cleanup

# set timezone
RUN ln -snf /usr/share/zoneinfo/$TIMEZONE /etc/localtime && echo $TIMEZONE > /etc/timezone

WORKDIR $APPLICATION_PATH

EXPOSE 9000
