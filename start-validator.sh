#!/bin/bash

# Start Solana Test Validator with optimal settings for development
echo "Starting Solana Test Validator..."
echo "RPC URL: http://localhost:8899"
echo "WebSocket URL: ws://localhost:8900"
echo ""

solana-test-validator \
    --ledger test-ledger \
    --faucet-lamports 1000000000 \
    --faucet-sol 1000 \
    --reset \
    --quiet