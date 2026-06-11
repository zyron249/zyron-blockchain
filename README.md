# ZYRON Blockchain

**ZYRON** is a custom Layer-1 blockchain built with Cosmos SDK.

- Native coin: **ZYN** (base denom: `uzyn`)
- Chain ID: `zyron-testnet-1`

## Quick Start

```bash
git clone https://github.com/zyron249/zyron-blockchain.git
cd zyron-blockchain

sudo apt update && sudo apt install -y curl git make build-essential gcc
curl https://get.ignite.network/ignite! | bash

ignite chain scaffold zyron --address-prefix zyr || echo 'Already scaffolded'

make build
chmod +x scripts/*.sh
./scripts/init.sh

zyrond keys add mywallet --keyring-backend test
./scripts/start.sh
```

Full guides in /docs.