#!/bin/bash -x

tcpdump -i em2 -ne -l | awk '/vlan 120/{print $0}'

