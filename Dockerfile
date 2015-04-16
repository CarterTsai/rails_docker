FROM rails:4.2.1
MAINTAINER Carter Tsai <hamming1@gmail.com>

VOLUME /usr/src/app
WORKDIR /usr/src/app

ENTRYPOINT ["rails"]
