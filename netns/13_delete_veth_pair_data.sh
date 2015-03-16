#!/bin/bash

source "./00_check_condition.include"

if [ ! -z $DATA_DEV_HOST ]; then
  echo "1. delete DATA veth pair between router and host"
  delete_veth_pair_link_host $DATA_DEV_HOST $DATA_BR
fi

if [ ! -z $DATA_1_DEV_HOST ]; then
  echo "2. delete DATA veth pair between end-3 and host"
  delete_veth_pair_link_host $DATA_1_DEV_HOST $DATA_1_BR
fi


