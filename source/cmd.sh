#!/bin/sh

gcc -o server server.c

gcc -o sh13 sh13.c \
-I/opt/homebrew/include/SDL2 \
-L/opt/homebrew/lib \
-lSDL2 \
-lSDL2_ttf \
-lSDL2_image \
-lpthread
