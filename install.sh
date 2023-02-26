#!/bin/bash

ipath=/usr/local/share/adsb-wiki/readsb-install

cd "$ipath"

wget -O tar1090-install.sh https://gitee.com/smallmeng/tar1090-en/raw/master/install.sh
bash tar1090-install.sh /run/readsb

rm -rf /usr/local/share/tar1090
git clone https://gitee.com/smallmeng/tar1090-cn /usr/local/share/tar1090
