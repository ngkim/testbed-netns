#!/bin/bash -x

ip netns exec tilon tcpdump -i eth2 -ne -l

