#!/bin/bash

set -e
trap 'echo "[错误] 在执行第 $LINENO 行命令 $BASH_COMMAND 时出现错误！"' ERR
renice 10 $$

ipath=/usr/local/share/adsb-wiki/readsb-install
mkdir -p $ipath

cd "$ipath"

wget -O tar1090-install.sh https://gitee.com/smallmeng/tar1090-en/raw/master/install.sh
bash tar1090-install.sh /run/readsb

rm -rf /usr/local/share/tar1090
git clone https://gitee.com/smallmeng/tar1090-cn /usr/local/share/tar1090

sed -i -e "s/你的UUID是：/你的UUID是：$(cat /root/get_message/UUID)/g" /usr/local/share/tar1090/html/index.html
