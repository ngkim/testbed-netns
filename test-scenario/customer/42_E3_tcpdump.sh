#!/bin/bash -x

ip netns exec TL-E3 tcpdump -i TL-E3-int3 -ne -l

