#!/bin/bash -x

ip netns exec TL-S1 tcpdump -i eth-TL-S1-ext1 -ne -l

