#!/bin/sh -x
CONFFILE=/etc/privoxy/config
PIDFILE=/var/run/privoxy.pid

chmod +r /etc/privoxy/config && chmod +x /usr/local/bin/privoxy-start.sh

if [ ! -f "${CONFFILE}" ]; then
        echo "Configuration file ${CONFFILE} not found!"
        exit 1
fi

/usr/sbin/privoxy --no-daemon --pidfile "${PIDFILE}" "${CONFFILE}"
