#!/bin/bash

source "./00_check_condition.include"

create_veth_pair_gw() {
  ROUTER_NS_NAME=$1
  END_NS_NAME=$2
  GW_VETH_NS=$3
  GW_VETH_END=$4
  GW_VETH_IP_NS=$5
  GW_VETH_IP_END=$6
  
  if [ ! -z $END_NS_NAME ]; then
    echo "*** create veth pair"
    create_veth_pair_link_ns $ROUTER_NS_NAME $END_NS_NAME \
				$GW_VETH_NS $GW_VETH_END \
				$GW_VETH_IP_NS $GW_VETH_IP_END
  fi
}

create_veth_pair_gw $NS_NAME $END_1_NS_NAME $GW_1_DEV_NS $GW_1_DEV_END $GW_1_IP_NS $GW_1_IP_END
create_veth_pair_gw $NS_NAME $END_2_NS_NAME $GW_2_DEV_NS $GW_2_DEV_END $GW_2_IP_NS $GW_2_IP_END
create_veth_pair_gw $NS_NAME $END_3_NS_NAME $GW_3_DEV_NS $GW_3_DEV_END $GW_3_IP_NS $GW_3_IP_END
