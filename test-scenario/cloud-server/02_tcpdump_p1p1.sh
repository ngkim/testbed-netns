#!/bin/bash -x

ssh cloud-server tcpdump -i p1p1 -ne -l
