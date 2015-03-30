#!/bin/bash -x

ssh cloud-server tcpdump -i p1p2 -ne -l
