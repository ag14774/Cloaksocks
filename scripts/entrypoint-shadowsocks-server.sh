#!/bin/sh

echo -e "=============================================================================="
echo -e "======================= SHADOWSOCKS SERVER ============================"
echo -e "=============================================================================="

sed -i "s|<SS_SERVER_IP>|${SS_SERVER_IP}|" /app/config.json
sed -i "s|<SS_SERVER_PASSWORD>|${SS_SERVER_PASSWORD}|" /app/config.json
sed -i "s|<SS_ENC_METHOD>|${SS_ENC_METHOD}|" /app/config.json

exec "$@"
