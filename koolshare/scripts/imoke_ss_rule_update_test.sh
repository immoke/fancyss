#!/bin/bash

url_main="https://raw.githubusercontent.com/immoke/fancyss/master/rules/"
alias echo_date='echo 【$(date +%Y年%m月%d日\ %X)】:'

wget --no-check-certificate --timeout=8 -qO - $url_main/gfwlist.conf > /tmp/gfwlist.conf
md5sum_gfwlist1=$(md5sum /tmp/gfwlist.conf | sed 's/ /\n/g'| sed -n 1p)
echo $md5sum_gfwlist1