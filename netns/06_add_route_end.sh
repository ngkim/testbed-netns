#!/bin/bash

source "./00_check_condition.include"

add_route() {
        NETNS=$1
	declare -a DATA_ROUTE=("${!2}")
	
	for idx in ${!DATA_ROUTE[@]}; do
	  route=${DATA_ROUTE[$idx]}
          cidr=`echo $route | awk '{print $1}'`
          gw=`echo $route | awk '{print $2}'`

          cmd="ip netns exec $NETNS ip route add $cidr via $gw"
          run_commands $cmd
	done		
}

set_default_gw() {
        NETNS=$1
        GW=$2

        cmd="ip netns exec $NETNS ip route add default via $GW"
        run_commands $cmd
}

if [ ! -z $END_1_NS_NAME ]; then	
  echo "1-1. Add route for END-1"
  add_route $END_1_NS_NAME GW_1_IP_NS_ROUTE[@]

  echo "1-2. Set default route for END-1"
  set_default_gw $END_1_NS_NAME $GW_1_IP_NS_DEFAULT
fi

if [ ! -z $END_2_NS_NAME ]; then	
  echo "2-1. Add route for END-2"
  add_route $END_2_NS_NAME GW_2_IP_NS_ROUTE[@]

  echo "2-2. Set default route for END-2"
  set_default_gw $END_2_NS_NAME $GW_2_IP_NS_DEFAULT
fi
