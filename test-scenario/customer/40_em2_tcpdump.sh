#!/bin/bash

DEV=em2
tcpdump -i $DEV -ne -l | awk '{
  if ( $7 == "(0x0800)," ) {
    printf("%s %s %s %s > %s %s %s %s\n", $5, $6, $7, $10, $12, $13, $14, $15)
  } else if ( $7 == "(0x0806)," ) {
    printf("%s %s %s %s > %s %s %s %s\n", $5, $6, $7, $10, $11, $12, $13, $14)
  }
}
