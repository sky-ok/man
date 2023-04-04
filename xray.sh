#!/bin/sh
if [ ! -f UUID ]; then
  UUID="b962ba9d-65eb-4a4f-bd0e-215b4e8f326d"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

