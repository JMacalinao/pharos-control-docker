#!/bin/bash

if [[ ! -d /opt/pharoscontrol/conf ]]; then
    ln -s /app/config/conf /opt/pharoscontrol/conf
fi
if [[ ! -d /opt/pharoscontrol/db ]]; then
    ln -s /app/config/db /opt/pharoscontrol/db
fi

chown -R pharoscontrol:pharoscontrol /opt/pharoscontrol/conf
chown -R pharoscontrol:pharoscontrol /opt/pharoscontrol/db
exec gosu pharoscontrol "${@}"