#!/bin/bash

# Check parameters
test $# = 2 || { echo "Need 1 parameter: The keypair name to use for created VMs"; exit 1; }
KEY_PAIR="$1"
STACK="cc-docker"

# Create the stack using server-landscape.yaml and defining all necessary parameters.
# Important: Use $STACK as the stack name, and $KEY_PAIR as the key pair.

source .\cc1718-group10-openrc-3.sh

openstack stack create -t .\server-landscape-yml $STACK --wait
