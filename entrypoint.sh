#!/bin/bash

if [[ ! -f /opt/pharoscontrol/db ]]; then
    cp -R /app/db/. /opt/pharoscontrol/db
fi
chown -R pharoscontrol:pharoscontrol /opt/pharoscontrol/db
exec gosu pharoscontrol "${@}"