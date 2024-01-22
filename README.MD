# joshurtree/cloudflared

This fixes the inability of the docker image '''cloudflare/cloudflared''' to store the token in a secrets file.

## Usage
It is used in the same way as '''cloudflare/cloudflared''' except that setting the environment variable '''$TOKEN_FILE''' reads the token from the given file. 