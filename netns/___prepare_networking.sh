#1/bin/bash

source "$HOME/testbed-netns/lib/commands.sh"

cmd="apt-get install -y bridge-utils vlan"
run_commands $cmd

cmd="vconfig add em2 120"
run_commands $cmd

cmd="ifconfig em2.120 up"
run_commands $cmd

cmd="vconfig add em2 121"
run_commands $cmd

cmd="ifconfig em2.121 up"
run_commands $cmd

cmd="brctl addbr br-public"
run_commands $cmd

cmd="brctl addbr br-private"
run_commands $cmd

cmd="brctl addif br-public em2.121"
run_commands $cmd

cmd="brctl addif br-private em2.120"
run_commands $cmd
