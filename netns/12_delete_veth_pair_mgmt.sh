#!/bin/bash

source "./00_check_condition.include"

delete_veth_pair_mgmt() {
  MGMT_VETH_HOST=$1
  MGMT_BR=$2

  if [ ! -z $MGMT_BR ]; then
    echo "*** delete MGMT veth pair"
    delete_veth_pair_link_host $MGMT_VETH_HOST $MGMT_BR
  fi
}

delete_veth_pair_mgmt $MGMT_DEV_HOST $MGMT_BR
delete_veth_pair_mgmt $END_1_MGMT_DEV_HOST $MGMT_BR
delete_veth_pair_mgmt $END_2_MGMT_DEV_HOST $MGMT_BR
delete_veth_pair_mgmt $END_3_MGMT_DEV_HOST $MGMT_BR
delete_veth_pair_mgmt $END_4_MGMT_DEV_HOST $MGMT_BR

