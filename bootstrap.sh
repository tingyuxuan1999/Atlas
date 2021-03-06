#!/bin/sh 
base=$(cd "$(dirname "$0")"; pwd)
cd $base
PKG_CONFIG_PATH=/usr/local/lib/pkgconfig ./configure --with-mysql=/usr --prefix=/usr/local/mysql-proxy CFLAGS="-DHAVE_LUA_H -O2" LDFLAGS="-lm -ldl -lcrypto" LUA_CFLAGS="/usr/local/bin/lua -I/usr/local/include/" LUA_LIBS="/usr/local/lib/ -llua"
