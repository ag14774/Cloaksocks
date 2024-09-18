#!/bin/sh

echo -e "=============================================================================="
echo -e "========================= CLOAK DOMAIN FRONTING =============================="
echo -e "=============================================================================="

sed -i "s|<CLOAK_BIND_PORTS>|${CLOAK_BIND_PORTS}|" /app/config.json
sed -i "s|<CLOAK_BYPASS_UID>|${CLOAK_BYPASS_UID}|" /app/config.json
sed -i "s|<CLOAK_REDIR_ADDR>|${CLOAK_REDIR_ADDR}|" /app/config.json
sed -i "s|<CLOAK_PRIVATE_KEY>|${CLOAK_PRIVATE_KEY}|" /app/config.json

exec "$@"
