#!/bin/bash

source "./00_check_condition.include"

./01_create_namespace.sh $CUSTOMER
./02_create_veth_pair_mgmt.sh $CUSTOMER
./03_create_veth_pair_data.sh $CUSTOMER
./04_create_veth_pair_gw.sh $CUSTOMER
./05_add_route_data.sh $CUSTOMER
./06_add_route_end.sh $CUSTOMER

