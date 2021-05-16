#!/bin/bash

chown -R pharoscontrol:pharoscontrol /opt/pharoscontrol/db
exec gosu pharoscontrol "${@}"