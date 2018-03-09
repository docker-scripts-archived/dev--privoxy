
APP=privoxy1

### Docker settings.
IMAGE=privoxy1
CONTAINER=privoxy1
PORT_SSH=2222    ## ssh port is needed for websites that are accessed through ssh-tunnels
PORTS="80:80 443:443 8118:8118 $PORT_SSH:22"
