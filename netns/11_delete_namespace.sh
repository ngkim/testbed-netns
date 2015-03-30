#!/bin/bash

source "./00_check_condition.include"

delete_existing_ns() {
  END_NS_NAME=$1

  if [ ! -z $END_NS_NAME ];then
    delete_ns $END_NS_NAME
  fi
}

delete_existing_ns $NS_NAME
delete_existing_ns $END_1_NS_NAME
delete_existing_ns $END_2_NS_NAME
delete_existing_ns $END_3_NS_NAME
delete_existing_ns $END_4_NS_NAME

