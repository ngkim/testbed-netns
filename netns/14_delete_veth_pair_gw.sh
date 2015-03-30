#!/bin/bash

source "./00_check_condition.include"

delete_veth_pair_gw() {
  END_NS_NAME=$1
  GW_VETH_END=$2

  if [ ! -z $END_NS_NAME ]; then
    echo "*** delete veth pair"
    delete_veth_pair_link_ns $END_NS_NAME $GW_VETH_END
  fi

}

delete_veth_pair_gw $END_1_NS_NAME $GW_1_DEV_END
delete_veth_pair_gw $END_2_NS_NAME $GW_2_DEV_END
