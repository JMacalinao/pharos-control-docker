#!/bin/bash

if [[ ! -f /opt/pharoscontrol/conf ]]; then
    cp -R /app/conf/. /opt/pharoscontrol/conf
fi
if [[ ! -f /opt/pharoscontrol/db ]]; then
    cp -R /app/db/. /opt/pharoscontrol/db
fi

chown -R pharoscontrol:pharoscontrol /opt/pharoscontrol/conf
chown -R pharoscontrol:pharoscontrol /opt/pharoscontrol/db
exec gosu pharoscontrol "${@}"