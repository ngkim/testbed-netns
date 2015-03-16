#!/bin/bash

source "./00_check_condition.include"

if [ ! -z $MGMT_DEV_HOST ]; then
  echo "1. delete MGMT veth pair between router and host"
  delete_veth_pair_link_host $MGMT_DEV_HOST $MGMT_BR
fi

if [ ! -z $END_1_MGMT_DEV_HOST ]; then
  echo "2. delete MGMT veth pair between end-1 and host"
  delete_veth_pair_link_host $END_1_MGMT_DEV_HOST $MGMT_BR
fi

if [ ! -z $END_2_MGMT_DEV_HOST ]; then
  echo "3. delete MGMT veth pair between end-2 and host"
  delete_veth_pair_link_host $END_2_MGMT_DEV_HOST $MGMT_BR
fi

if [ ! -z $END_3_MGMT_DEV_HOST ]; then
  echo "3. delete MGMT veth pair between end-3 and host"
  delete_veth_pair_link_host $END_3_MGMT_DEV_HOST $MGMT_BR
fi

