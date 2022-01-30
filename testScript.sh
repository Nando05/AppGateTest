#!/bin/bash

var=$(date +"%FORMAT_STRING")
now=$(date +"%Y_%m_%d_%H")
getHours1="$(awk '{print substr($4,14,2)}' /var/log/apache2/access.log | sort -nr |  uniq -c)"
echo "${getHours1}" > tempFile_${now}.log

