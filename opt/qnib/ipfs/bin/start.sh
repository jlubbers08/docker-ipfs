#!/bin/bash 


IPFS_DATA=${IPFS_DATA-/data/}
cd ${IPFS_DATA}
ipfs init

sleep 1
ipfs bootstrap rm --all

# smart to open it up so bad...?
#ipfs config Addresses.Gateway /ip4/0.0.0.0/tcp/8080 
ipfs config Addresses.API /ip4/0.0.0.0/tcp/5001

ipfs daemon