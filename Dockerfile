from alpine:3.8
RUN  echo http://dl-cdn.alpinelinux.org/alpine/edge/community/ >> /etc/apk/repositories ; apk update ;  apk add crystal  bash git  make gcc llvm5 llvm5-dev g++ libressl-dev libxml2-dev shards

RUN export LLVM_CONFIG=/usr/src
RUN git clone  https://github.com/crystal-lang/crystal.git; cd crystal;  make ; ln -s /crystal/bin/crystal /usr/local/bin/crystal
