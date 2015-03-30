#!/bin/bash

source "./00_check_condition.include"

create_veth_pair_data() {
  DATA_NS=$1
  DATA_VETH_NS=$2
  DATA_VETH_HOST=$3
  DATA_VETH_IP_NS=$4
  DATA_VETH_BR=$5
  
  if [ ! -z $DATA_VETH_NS ]; then
    echo "*** create DATA veth pair"
    create_veth_pair_link_host $DATA_NS \
				$DATA_VETH_NS $DATA_VETH_HOST \
				$DATA_VETH_IP_NS \
				$DATA_VETH_BR
  fi
}

create_veth_pair_data $NS_NAME $DATA_DEV_NS $DATA_DEV_HOST $DATA_IP_NS $DATA_BR
create_veth_pair_data $END_4_NS_NAME $DATA_1_DEV_NS $DATA_1_DEV_HOST $DATA_1_IP_NS $DATA_1_BR

