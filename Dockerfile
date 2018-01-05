ARG VERSION_NODEJS=8.9.3-r0
FROM minoruta/node-alpine:$VERSION_NODEJS
MAINTAINER KINOSHITA minoru <5021543+minoruta@users.noreply.github.com>
ARG VERSION_PJSIP=2.7.1

RUN apk add --no-cache --virtual .build4pjsip \
    alpine-sdk \
    && apk add --no-cache \
    libsrtp-dev \
    openssl-dev \
    opus-dev \
    && cd \
    && wget -nv "http://www.pjsip.org/release/$VERSION_PJSIP/pjproject-$VERSION_PJSIP.tar.bz2" -O - | tar xjf - \
    && cd pjproject-$VERSION_PJSIP \
    && ./configure \
      --with-external-srtp \
      --enable-shared \
      --disable-sound \
      --disable-oss \
      --disable-sdl \
      --disable-speex-aec \
      --disable-video \
      --prefix=/usr \
    && make dep \
    && make \
    && make install \
    && cd \
    && rm -rf pjproject-$VERSION_PJSIP \
    && apk del .build4pjsip
