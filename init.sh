#!/usr/bin/env /bin/bash
if ! [ -f "$TOKEN_FILE" ]; then
    echo "The file $TOKEN_FILE does not exist"
    exit
fi

cloudflared service install $(cat $TOKEN_FILE)
