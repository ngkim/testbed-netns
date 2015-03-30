#!/bin/bash

source "./00_check_condition.include"

create_new_ns() {
  END_NS_NAME=$1

  if [ ! -z $END_NS_NAME ];then
    create_ns $END_NS_NAME
  fi
}

create_new_ns $NS_NAME
create_new_ns $END_1_NS_NAME
create_new_ns $END_2_NS_NAME
create_new_ns $END_3_NS_NAME
create_new_ns $END_4_NS_NAME

