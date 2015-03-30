#!/bin/bash

source "./00_check_condition.include"

create_veth_for_mgmt() {
  MGMT_NS_NAME=$1
  MGMT_VETH_NS=$2
  MGMT_VETH_HOST=$3
  MGMT_VETH_IP_NS=$4
  MGMT_BR=$5

  if [ ! -z $MGMT_VETH_NS ]; then
    echo "*** create MGMT veth pair"
    create_veth_pair_link_host $MGMT_NS_NAME \
				$MGMT_VETH_NS $MGMT_VETH_HOST \
				$MGMT_VETH_IP_NS \
				$MGMT_BR
  fi
}

if [ $USE_MGMT -eq 0 ]; then
   echo "$0 : USE_MGMT is set to 0"
   exit
fi

create_veth_for_mgmt $NS_NAME $MGMT_DEV_NS $MGMT_DEV_HOST $MGMT_IP_NS $MGMT_BR
create_veth_for_mgmt $END_1_NS_NAME $END_1_MGMT_DEV_NS $END_1_MGMT_DEV_HOST $END_1_MGMT_IP_NS $MGMT_BR
create_veth_for_mgmt $END_2_NS_NAME $END_2_MGMT_DEV_NS $END_2_MGMT_DEV_HOST $END_2_MGMT_IP_NS $MGMT_BR
create_veth_for_mgmt $END_3_NS_NAME $END_3_MGMT_DEV_NS $END_3_MGMT_DEV_HOST $END_3_MGMT_IP_NS $MGMT_BR
create_veth_for_mgmt $END_4_NS_NAME $END_4_MGMT_DEV_NS $END_4_MGMT_DEV_HOST $END_4_MGMT_IP_NS $MGMT_BR

