#!/bin/bash

source "./00_check_condition.include"

start=2
count=${#}
command=${@:$start:$count}

cmd="ip netns exec $NS_NAME $command"
run_commands $cmd
