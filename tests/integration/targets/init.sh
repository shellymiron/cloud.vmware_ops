#!/usr/bin/env bash
# shellcheck disable=SC2155,SC2086

export VALIDATED_COLLECTIONS_PATH="/home/kni/actions-runner/eco-vcenter/cloud.vmware_ops/cloud.vmware_ops/ansible_collections"
export ALL_COLLECTIONS_PATH="$HOME/.ansible/collections/ansible_collections"

# Export the collections path
export ANSIBLE_COLLECTIONS_PATH=${VALIDATED_COLLECTIONS_PATH}:${ALL_COLLECTIONS_PATH}

echo "ANSIBLE_COLLECTIONS_PATH: $ANSIBLE_COLLECTIONS_PATH"
BASE_DIR=$(dirname "$(realpath "${BASH_SOURCE[0]}")")
export ANSIBLE_ROLES_PATH=${BASE_DIR}:${ANSIBLE_COLLECTIONS_PATH}
