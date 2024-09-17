#!/bin/bash

echo "Creating first canister..."
CANISTER1=$(dfx canister call actorclass_backend createCanister '("canister1")' | tr -d '()')
echo "Created canister with principal: $CANISTER1"

echo "Creating second canister..."
CANISTER2=$(dfx canister call actorclass_backend createCanister '("canister2")' | tr -d '()')
echo "Created canister with principal: $CANISTER2"

echo "Calling getName on second canister..."
CANISTER2_CLEAN=$(echo $CANISTER2 | sed 's/principal //; s/"//g')
NAME=$(dfx canister call "$CANISTER2_CLEAN" getName)
echo "Name returned: $NAME"