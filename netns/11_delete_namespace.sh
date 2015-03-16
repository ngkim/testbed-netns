#!/bin/bash

source "./00_check_condition.include"

if [ ! -z $NS_NAME ]; then
  delete_ns $NS_NAME
fi

if [ ! -z $END_1_NS_NAME ];then
  delete_ns $END_1_NS_NAME
fi

if [ ! -z $END_2_NS_NAME ];then
  delete_ns $END_2_NS_NAME
fi

if [ ! -z $END_3_NS_NAME ];then
  delete_ns $END_3_NS_NAME
fi
