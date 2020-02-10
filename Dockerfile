FROM alpine

RUN apk update \
  && apk add build-base curl \
  && curl -O https://ftp.gnu.org/gnu/make/make-4.2.1.tar.gz \
  && tar -xzf make-4.2.1.tar.gz \
  && cd ./make-4.2.1 && ./configure && make && make install && cd - \
  && rm make-4.2.1.tar.gz \
  && apk del build-base

RUN which make

RUN make --version

