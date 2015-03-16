#!/bin/bash

source "./00_check_condition.include"

if [ ! -z $MGMT_DEV_NS ]; then
  echo "1. create MGMT veth pair between router and host"
  create_veth_pair_link_host $NS_NAME \
				$MGMT_DEV_NS $MGMT_DEV_HOST \
				$MGMT_IP_NS \
				$MGMT_BR
fi

if [ ! -z $END_1_MGMT_DEV_NS ]; then
  echo "2. create MGMT veth pair between end-1 and host"
  create_veth_pair_link_host $END_1_NS_NAME \
				$END_1_MGMT_DEV_NS $END_1_MGMT_DEV_HOST \
				$END_1_MGMT_IP_NS \
				$MGMT_BR
fi

if [ ! -z $END_2_MGMT_DEV_NS ]; then
  echo "3. create MGMT veth pair between end-2 and host"
  create_veth_pair_link_host $END_2_NS_NAME \
				$END_2_MGMT_DEV_NS $END_2_MGMT_DEV_HOST \
				$END_2_MGMT_IP_NS \
				$MGMT_BR
fi

if [ ! -z $END_3_NS_NAME ]; then
  echo "3. create MGMT veth pair between end-2 and host"
  create_veth_pair_link_host $END_3_NS_NAME \
				$END_3_MGMT_DEV_NS $END_3_MGMT_DEV_HOST \
				$END_3_MGMT_IP_NS \
				$MGMT_BR
fi

