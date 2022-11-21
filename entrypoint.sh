#!/bin/bash

if [[ ! -d /app/config/conf ]]; then
    mv /opt/pharoscontrol/conf /app/config/conf
    ln -s /opt/pharoscontrol/conf
fi
if [[ ! -d /app/config/db ]]; then
    mv /opt/pharoscontrol/db /app/config/db
    ln -s /app/config/db /opt/pharoscontrol/db
fi

chown -R pharoscontrol:pharoscontrol /opt/pharoscontrol/conf
chown -R pharoscontrol:pharoscontrol /opt/pharoscontrol/db
exec gosu pharoscontrol "${@}"