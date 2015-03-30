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

add_route_data() {
  ROUTER_NS=$1
  DEFAULT_IP_NS_ROUTE=$2
  declare -a IP_NS_ROUTE=("${!3}")

  if [ $# -eq 3 ]; then	
    echo "1. Add route for DATA"
    add_route $ROUTER_NS IP_NS_ROUTE[@]

    echo "2. Set default route"
    set_default_gw $ROUTER_NS $DEFAULT_IP_NS_ROUTE
  fi

}

add_route_data $NS_NAME $DATA_IP_NS_DEFAULT DATA_IP_NS_ROUTE[@]
add_route_data $END_4_NS_NAME $DATA_1_IP_NS_DEFAULT DATA_1_IP_NS_ROUTE[@]
