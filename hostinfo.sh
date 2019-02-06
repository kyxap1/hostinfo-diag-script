#!/usr/bin/env bash

# commands list
CMD="lsb_release -a
uname -a
ifconfig -a
cat /etc/network/interfaces
netstat -s
ip -s link show dev eth0
iptables -L -n
vmstat -s
vmstat -m
vmstat -d
lsblk
mount
df -h
dmesg -TLnever"

# printer func
P() { printf "%b\n%s\n\n" "#### [$2]" "$($2)"; }

# loop over indices
mapfile -t <<<"${CMD}" -c1 -C 'P $@'
