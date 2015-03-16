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

if [ ! -z $NS_NAME ]; then	
  echo "1. Add route for DATA"
  add_route $NS_NAME DATA_IP_NS_ROUTE[@]

  echo "2. Set default route"
  set_default_gw $NS_NAME $DATA_IP_NS_DEFAULT
fi

if [ ! -z $END_3_NS_NAME ]; then	
  echo "3. Add route for END_3"
  add_route $END_3_NS_NAME DATA_1_IP_NS_ROUTE[@]

  echo "4. Set default route"
  set_default_gw $END_3_NS_NAME $DATA_1_IP_NS_DEFAULT
fi
