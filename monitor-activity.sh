#!/bin/bash

echo "🔍 Monitoring Solana activity..."
echo "Press Ctrl+C to stop monitoring"
echo ""

# Monitor balance changes and show timestamp
LAST_BALANCE=""
while true; do
    CURRENT_BALANCE=$(solana balance 2>/dev/null | grep SOL || echo "Validator not ready")

    if [ "$CURRENT_BALANCE" != "$LAST_BALANCE" ] && [ ! -z "$CURRENT_BALANCE" ]; then
        echo "💰 $(date '+%H:%M:%S') - Balance: $CURRENT_BALANCE"
        LAST_BALANCE="$CURRENT_BALANCE"
    fi

    sleep 2
done
