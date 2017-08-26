#!/bin/bash
set -e
FILE=${BASH_SOURCE[0]}
pushd `dirname $FILE` > /dev/null
SCRIPT_PATH=`pwd -P`
popd > /dev/null
SCRIPT_FILE=`basename $FILE`
CHINA_IPS_FILE=china_ip_list.txt
echo -e "Downloading Chinese IP Segments file '${CHINA_IPS_FILE}'"
curl -L https://github.com/17mon/china_ip_list/blob/master/china_ip_list.txt/master/${CHINA_IPS_FILE} -o ${SCRIPT_PATH}/${CHINA_IPS_FILE}
OUTPUT_PATH=${SCRIPT_PATH}/../downloads
ROUTE_FILE=${OUTPUT_PATH}/route.sh