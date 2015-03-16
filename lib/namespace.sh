create_ns() {
  _NS_NAME=$1

  cmd="ip netns add $_NS_NAME"
  run_commands $cmd
}

delete_ns() {
  _NS_NAME=$1

  cmd="ip netns delete $_NS_NAME"
  run_commands $cmd
}

create_veth_pair_link_host() {
  NS_NAME=$1

  DEV_NS=$2
  DEV_HOST=$3

  IP_NS=$4
  BRIDGE=$5

  # NS
  cmd="ip link add $DEV_NS type veth peer name $DEV_HOST"
  run_commands $cmd

  cmd="ip link set $DEV_NS netns $NS_NAME"
  run_commands $cmd

  cmd="ip netns exec $NS_NAME ip addr add $IP_NS dev $DEV_NS"
  run_commands $cmd

  cmd="ip netns exec $NS_NAME ip link set $DEV_NS up"
  run_commands $cmd

  cmd="ifconfig $DEV_HOST up"
  run_commands $cmd

  cmd="brctl addif $BRIDGE $DEV_HOST"
  run_commands $cmd
}

delete_veth_pair_link_host() {
  DEV_HOST=$1
  BRIDGE=$2

  cmd="brctl delif $BRIDGE $DEV_HOST"
  run_commands $cmd

  cmd="ip link delete $DEV_HOST"
  run_commands $cmd

}

create_veth_pair_link_ns() {
  NS_NORTH=$1
  NS_SOUTH=$2

  DEV_NS_NORTH=$3
  DEV_NS_SOUTH=$4
  
  IP_NS_NORTH=$5
  IP_NS_SOUTH=$6

  #IP_NS_NORTH_GW=${IP_NS_NORTH%/*} # get the string before '/' 

  # NS_NORTH (Router)
  cmd="ip link add $DEV_NS_NORTH type veth peer name $DEV_NS_SOUTH"
  run_commands $cmd

  cmd="ip link set $DEV_NS_NORTH netns $NS_NORTH"
  run_commands $cmd

  cmd="ip netns exec $NS_NORTH ip addr add $IP_NS_NORTH dev $DEV_NS_NORTH"
  run_commands $cmd

  cmd="ip netns exec $NS_NORTH ip link set $DEV_NS_NORTH up"
  run_commands $cmd

  # NS_SOUTH (End)
  cmd="ip link set $DEV_NS_SOUTH netns $NS_SOUTH"
  run_commands $cmd

  cmd="ip netns exec $NS_SOUTH ip addr add $IP_NS_SOUTH dev $DEV_NS_SOUTH"
  run_commands $cmd

  cmd="ip netns exec $NS_SOUTH ip link set $DEV_NS_SOUTH up"
  run_commands $cmd
}

delete_veth_pair_link_ns() {
  NS_SOUTH=$1
  DEV_NS_SOUTH=$2
  
  # NS_SOUTH (End)
  cmd="ip netns exec $NS_SOUTH ip link delete $DEV_NS_SOUTH"
  run_commands $cmd
}
