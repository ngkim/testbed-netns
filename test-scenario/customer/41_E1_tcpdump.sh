#!/bin/bash -x

ip netns exec TL-E1 tcpdump -i TL-E1-int0 -ne -l

