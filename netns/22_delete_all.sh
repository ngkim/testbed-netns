#!/bin/bash

source "./00_check_condition.include"

./14_delete_veth_pair_gw.sh $CUSTOMER
./13_delete_veth_pair_data.sh $CUSTOMER
./12_delete_veth_pair_mgmt.sh $CUSTOMER
./11_delete_namespace.sh $CUSTOMER
