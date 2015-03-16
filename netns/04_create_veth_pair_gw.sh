#!/bin/bash

source "./00_check_condition.include"

if [ ! -z $END_1_NS_NAME ]; then
  echo "1. create veth pair between router and net-1"
  create_veth_pair_link_ns $NS_NAME $END_1_NS_NAME \
				$GW_1_DEV_NS $GW_1_DEV_END \
				$GW_1_IP_NS $GW_1_IP_END
fi

if [ ! -z $END_2_NS_NAME ]; then
  echo "2. create veth pair between router and net-2"
  create_veth_pair_link_ns $NS_NAME $END_2_NS_NAME \
				$GW_2_DEV_NS $GW_2_DEV_END \
				$GW_2_IP_NS $GW_2_IP_END
fi
