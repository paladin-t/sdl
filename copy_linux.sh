#!/bin/sh

ARCH=$(arch)
BASEDIR=$(dirname $0)
SUBDIR=""
if [ "$ARCH" = "x86_64" ]; then
  SUBDIR="x64"
else
  SUBDIR="x86"
fi

if [ -d "$BASEDIR/build/.libs" ]; then
  cp -f "$BASEDIR/include/SDL_config.h" "$BASEDIR/lib/$SUBDIR/linux/"
  cp -f "$BASEDIR/build/.libs/libSDL2.a" "$BASEDIR/lib/$SUBDIR/"
  cp -f "$BASEDIR/build/.libs/libSDL2.la" "$BASEDIR/lib/$SUBDIR/"
  cp -f "$BASEDIR/build/.libs/libSDL2-2.0.so.0.12.0" "$BASEDIR/lib/$SUBDIR/"
  cp -f "$BASEDIR/build/.libs/libSDL2-2.0.so.0" "$BASEDIR/lib/$SUBDIR/"
  cp -f "$BASEDIR/build/.libs/libSDL2.so" "$BASEDIR/lib/$SUBDIR/"
fi

echo Ok.
