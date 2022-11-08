#!/bin/sh
if [ ! -f UUID ]; then
  UUID="f936ddf1-2abd-4bf4-962d-9537097cc073"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

