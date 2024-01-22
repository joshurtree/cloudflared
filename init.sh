#!/usr/bin/env /bin/bash
if [ -v $TOKEN_FILE]; then
    cloudflared  $@ --token $(cat $TOKEN_FILE)
else
    cloudflared $@
fi