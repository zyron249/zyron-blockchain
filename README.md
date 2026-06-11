# ZYRON Blockchain

**ZYRON** is a custom Layer-1 blockchain built with Cosmos SDK. Native token: **ZYN** (base denom: `uzyn`).

Chain ID: `zyron-testnet-1`

## Quick Start (Google Cloud Shell / Codespaces)

```bash
# 1. Clone the repo
git clone https://github.com/zyron249/zyron-blockchain.git
cd zyron-blockchain

# 2. Install dependencies
sudo apt-get update && sudo apt-get install -y curl git build-essential make gcc

# Install Ignite CLI
curl https://get.ignite.network/ignite! | bash

# 3. Scaffold if needed
ignite chain scaffold zyron --address-prefix zyr

# 4. Build
make build

# 5. Initialize
./scripts/init.sh

# 6. Start
./scripts/start.sh
```

Full setup in README.