# Custom Caddyserver image for InvenTree
# Adds a custom configuration file to the Caddyserver image,
# designed to work "out of the box" with InvenTree.

FROM caddy:alpine AS inventree_caddy

# Copy the custom Caddyfile into the image
COPY Caddyfile /etc/caddy/Caddyfile
