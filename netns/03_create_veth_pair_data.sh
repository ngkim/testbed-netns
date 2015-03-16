#!/bin/bash

source "./00_check_condition.include"

if [ ! -z $DATA_DEV_NS ]; then
  echo "1. create DATA veth pair between router and host"
  create_veth_pair_link_host $NS_NAME \
				$DATA_DEV_NS $DATA_DEV_HOST \
				$DATA_IP_NS \
				$DATA_BR
fi

if [ ! -z $DATA_1_DEV_NS ]; then
  echo "2. create DATA veth pair between router and host"
  create_veth_pair_link_host $END_3_NS_NAME \
				$DATA_1_DEV_NS $DATA_1_DEV_HOST \
				$DATA_1_IP_NS \
				$DATA_1_BR
fi
