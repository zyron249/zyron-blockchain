#!/bin/bash
set -e
zyrond init mynode --chain-id zyron-testnet-1
ADDR=$(zyrond keys show validator -a --keyring-backend test 2>/dev/null || zyrond keys add validator --keyring-backend test | grep address | awk '{print $3}')
zyrond add-genesis-account $ADDR 10000000000uzyn
zyrond gentx validator 1000000uzyn --chain-id zyron-testnet-1 --keyring-backend test
zyrond collect-gentxs
echo 'ZYRON ready!'