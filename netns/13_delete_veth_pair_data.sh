#!/bin/bash

source "./00_check_condition.include"

delete_veth_pair_data() {
  DATA_VETH_HOST=$1
  DATA_VETH_BR=$2

  if [ ! -z $DATA_VETH_HOST ]; then
    echo "*** delete DATA veth pair"
    delete_veth_pair_link_host $DATA_VETH_HOST $DATA_VETH_BR
  fi

}

delete_veth_pair_data $DATA_DEV_HOST $DATA_BR
delete_veth_pair_data $DATA_1_DEV_HOST $DATA_1_BR

