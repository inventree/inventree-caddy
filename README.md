## inventree-caddy

[![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)](https://hub.docker.com/r/inventree/inventree-caddy)

This repository contains the source code for the `inventree-caddy` Docker image.

The `inventree-caddy` image is based on the [Caddy docker image](https://hub.docker.com/_/caddy), and comes pre-loaded with a configuration file which works "out of the box" with InvenTree.

### InvenTree Setup

To setup InvenTree in docker, refer to our [Docker installation guide](https://docs.inventree.org/en/stable/start/docker_install/). 

### Customization

If you wish to change or customize the Caddy configuration, you can mount a custom Caddyfile into the container at `/etc/caddy/Caddyfile`.

Refer to the `Caddyfile` in this repository for a starting point.

### Environment Variables

The following environment variables can be set to customize the behavior of the image (beyond the default Caddy configuration):

| Variable | Description | Default |
| -------- | ----------- | ------- |
| `INVENTREE_SITE_URL` | The *external* URL at which InvenTree is hosted | `inventree.localhost` |
| `INVENTREE_SERVER` | The *internal* URL at which the InvenTree server is hosted (this should point to another docker container) | `http://inventree-server:8000` |

*Note: These environment variables are specified already using the default docker compose file, as part of the regular InvenTree setup.*
