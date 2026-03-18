# 1. Quick confirmation the router itself is reachable
ping -c 4 192.168.0.1
nmcli con show
ip neigh show dev enp195s0f0 | grep 192.168.0.1
ip addr show
ip route show
ip route get 8.8.8.8

