#!/bin/bash

# Start Solana Test Validator with maximum verbosity for debugging
echo "🔧 Starting VERBOSE Solana Test Validator..."
echo "📍 RPC URL: http://localhost:8899"
echo "🔌 WebSocket URL: ws://localhost:8900"
echo "💰 Faucet URL: http://localhost:9900"
echo ""
echo "🚨 VERBOSE MODE: You'll see ALL validator activity"
echo "📋 Including: slots, transactions, RPC calls, gossip, etc."
echo "⚡ Generate activity with: solana airdrop 1"
echo ""

# Remove quiet flag entirely and add verbose logging
solana-test-validator \
    --ledger test-ledger \
    --faucet-sol 1000000 \
    --reset \
    --log \
    --rpc-bind-address 0.0.0.0