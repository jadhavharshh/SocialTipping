#!/bin/bash

# Start Solana Test Validator with clean, minimal output
echo "🚀 Starting Solana Test Validator..."
echo "📍 RPC: http://localhost:8899"
echo "💰 Faucet: http://localhost:9900"
echo ""
echo "✅ Running quietly - validator is working in background"
echo "🔍 Check status: 'solana balance' in another terminal"
echo "🎯 Generate activity: 'solana airdrop 1' or 'pnpm run dev'"
echo ""
echo "Validator logs (important events only):"
echo "----------------------------------------"

solana-test-validator \
    --ledger test-ledger \
    --faucet-sol 1000000 \
    --reset \
    --quiet &

# Store the validator PID
VALIDATOR_PID=$!

# Show a heartbeat every 30 seconds to confirm it's running
while kill -0 $VALIDATOR_PID 2>/dev/null; do
    sleep 30
    echo "💓 $(date '+%H:%M:%S') - Validator running (PID: $VALIDATOR_PID)"
done