#!/bin/bash

chown -R pharoscontrol:pharoscontrol /opt/pharoscontrol/db
/usr/bin/java -cp /opt/pharoscontrol/lib/* com.tplink.hipap.server.backend.PharosControlHeadless