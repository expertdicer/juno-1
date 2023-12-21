#!/bin/bash

export KEY="juno1"
export KEY2="juno2"

export CHAIN_ID=${CHAIN_ID:-"local-1"}
export MONIKER="localjuno"
export KEYALGO="secp256k1"
export KEYRING=${KEYRING:-"test"}
export HOME_DIR=$(eval echo "${HOME_DIR:-"~/.juno"}")
export BINARY=${BINARY:-junod}

junod tx wasm store scripts/cw20_sudo.wasm --from juno1 --keyring-backend test --chain-id local-1 --gas 10000000 --fees 25000ujuno -y 

sleep 5

junod tx wasm instantiate 1 '{"name":"test","symbol":"TEST","decimals":6,"initial_balances":[{"address":"juno1hj5fveer5cjtn4wd6wstzugjfdxzl0xps73ftl","amount":"10000000000"}]}' --from juno1 --keyring-backend test --no-admin --label test --chain-id local-1 --fees 500ujuno -y

sleep 3

# juno14hj2tavq8fpesdwxxcu44rty3hh90vhujrvcmstl4zr3txmfvw9skjuwg8