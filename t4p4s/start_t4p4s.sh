#!/bin/bash

T4P4s_DIR=/home/tianzhu/t4p4s/t4p4s
CURR_DIR=$(pwd)

sudo rm /tmp/t4p4s/* 2> /dev/null

if [[ -z "${1}" ]]
then
	config="p2p"
else
	config="${1}"
fi

cd "${T4P4s_DIR}"
ARCH_OPTS_FILE="${CURR_DIR}"/"${config}".cfg ./t4p4s.sh :l2fwd