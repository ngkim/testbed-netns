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

add_route_end() {
  END_NS_NAME=$1
  DEFAULT_IP_NS_GW=$2
  declare -a IP_NS_ROUTE=("${!3}")

  if [ ! -z $END_NS_NAME ]; then	
    echo "*** Add route"
    add_route $END_NS_NAME IP_NS_ROUTE[@]

    echo "*** Set default route"
    set_default_gw $END_NS_NAME $DEFAULT_IP_NS_GW
  fi
}

add_route_end $END_1_NS_NAME $GW_1_IP_NS_DEFAULT GW_1_IP_NS_ROUTE[@]
add_route_end $END_2_NS_NAME $GW_2_IP_NS_DEFAULT GW_2_IP_NS_ROUTE[@]
add_route_end $END_3_NS_NAME $GW_3_IP_NS_DEFAULT GW_3_IP_NS_ROUTE[@]

