#!/bin/bash

export KEY="juno1"
export KEY2="juno2"

export CHAIN_ID=${CHAIN_ID:-"local-1"}
export MONIKER="localjuno"
export KEYALGO="secp256k1"
export KEYRING=${KEYRING:-"test"}
export HOME_DIR=$(eval echo "${HOME_DIR:-"~/.juno"}")
export BINARY=${BINARY:-junod}

addr="juno1hj5fveer5cjtn4wd6wstzugjfdxzl0xps73ftl"

junod q wasm contract-state smart juno14hj2tavq8fpesdwxxcu44rty3hh90vhujrvcmstl4zr3txmfvw9skjuwg8 '{"balance":{"address":"juno1jv65s3grqf6v6jl3dp4t6c9t9rk99cd83d88wr"}}'

# junod tx wasm execute juno14hj2tavq8fpesdwxxcu44rty3hh90vhujrvcmstl4zr3txmfvw9skjuwg8 '{"transfer":{"recipient":"juno1jv65s3grqf6v6jl3dp4t6c9t9rk99cd83d88wr","amount":"100"}}' --from juno1 --keyring-backend test --chain-id local-1 --fees 500ujuno -y