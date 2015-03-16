#!/bin/bash

source "./00_check_condition.include"

if [ ! -z $END_1_NS_NAME ]; then
  echo "1. delete veth pair between router and net-1"
  delete_veth_pair_link_ns $END_1_NS_NAME $GW_1_DEV_END
fi

if [ ! -z $END_2_NS_NAME ]; then
  echo "2. delete veth pair between router and net-2"
  delete_veth_pair_link_ns $END_2_NS_NAME $GW_2_DEV_END
fi
