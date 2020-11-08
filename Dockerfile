FROM golang:1.15.4-buster

RUN apt-get update && \
  apt-get install -y --no-install-recommends imagemagick libmagickcore-6.q16-6-extra libmagickwand-6-headers libjxr-tools && \
  # cleanup
  apt-get clean -y && \
  rm -rf \
   /var/cache/debconf/* \
   /var/lib/apt/lists/* \
   /var/log/* \
   /tmp/* \
   /var/tmp/*
