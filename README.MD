# joshurtree/cloudflared

This fixes the inability of the docker image '''cloudflare/cloudflared''' to store the token in a secrets file.

## Usage
Set the environment variable '''$TOKEN_FILE''' to the file containing the token.

## Example
docker-compose.yml
~~~
secrets:
  tunnel_token:
     file: ./my_token_file
services:
   image: joshurtree/cloudflared
   environment:
    TOKEN_FILE: /run/secrets/my_token_file
    secrets:
       - tunnel_token:
~~~