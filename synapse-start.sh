#!/bin/sh
source /opt/synapse/virtualenv/bin/activate
cd /opt/synapse/config/
exec python -m synapse.app.homeserver -c homeserver.yaml --server-name=oob.systems
