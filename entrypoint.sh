#!/bin/bash

if [[ ! -d /app/config/conf ]]; then
    mv /opt/pharoscontrol/conf /app/config
else
    rm -rf /opt/pharoscontrol/conf
fi
if [[ ! -d /app/config/db ]]; then
    mv /opt/pharoscontrol/db /app/config
else
    rm -rf /opt/pharoscontrol/db
fi

ln -s /app/config/conf /opt/pharoscontrol/conf
ln -s /app/config/db /opt/pharoscontrol/db

chown -R pharoscontrol:pharoscontrol /opt/pharoscontrol/conf
chown -R pharoscontrol:pharoscontrol /opt/pharoscontrol/db
exec gosu pharoscontrol "${@}"